package com.instrument.shop.repository.impl;

import com.instrument.shop.core.error.exception.MultipleDeletedRowsException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Paginator;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.filter.Filter;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.serializers.fileSerializers.FileSerializer;
import com.instrument.shop.sorter.Sorter;
import com.instrument.shop.util.JpqlUtil;
import com.instrument.shop.util.NumberGenerator;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;

@Singleton
public class UserRepositoryImpl implements UserRepository {
    private final TreeMap<Long, User> data;
    private final NumberGenerator<Long> userId;
    private final FileSerializer<Long, User> serializer;
    private final Filter<User> filter;
    private final Sorter<User> sorter;
    private final Paginator paginator;
    private final JpqlUtil jpqlUtil;

    private final EntityManagerFactory emf;

    @Inject
    public UserRepositoryImpl(
            Map<Long, User> data,
            NumberGenerator<Long> userId,
            FileSerializer<Long, User> serializer,
            Filter<User> filter,
            Sorter<User> sorter,
            Paginator paginator,
            JpqlUtil jpqlUtil,
            EntityManagerFactory emf
    ) {
        this.data = new TreeMap<>(data);
        this.userId = userId;
        this.serializer = serializer;
        this.filter = filter;
        this.sorter = sorter;
        this.paginator = paginator;
        this.jpqlUtil = jpqlUtil;
        this.emf = emf;
    }

    @Override
    public long count() {
        long counted = 0;

        String jpq = "select count(*) from User u";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Long> count = em.createQuery(jpq, Long.class);
            counted = count.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return counted;
    }

    @Override
    public User save(User user) throws IOException {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            if (user.getId() == null) {
                em.persist(user);
            } else {
                user = em.merge(user);
            }
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return user;
    }

    @Override
    public List<User> saveAll(Iterable<User> users) throws IOException {
        ArrayList<User> savedUsers = new ArrayList<>(10);

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            int i = 1;
            for (User user : users) {
                if (user.getId() == null) {
                    em.persist(user);
                    savedUsers.add(user);
                } else {
                    savedUsers.add(em.merge(user));
                }

                if (i % 10 == 0) {
                    em.flush();
                    em.clear();
                }
                i++;
            }

            em.flush();
            em.clear();
            tr.commit();
        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }

        return savedUsers;
    }

    @Override
    public PaginatedResponse<User> findAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        List<User> allUsers = new ArrayList<>();
        long allUsersNum = 0;

        String filterPart = getValidFilter(filterData);
        if (!filterPart.isEmpty()) {
            filterPart = "where " + filterPart.substring(5);
        }
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpq = "select u from User u " + filterPart + orderBy;
        String countQuery = "select count(*) from User u " + filterPart;

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<User> selectAll = em.createQuery(jpq, User.class);
            selectAll.setFirstResult(pageRequest.getPage() * pageRequest.getSize());
            selectAll.setMaxResults(pageRequest.getSize());

            TypedQuery<Long> count = em.createQuery(countQuery, Long.class);

            if (!filterPart.isEmpty()) {
                for (Map.Entry<String, String> entry : filterData.entrySet()) {
                    selectAll.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                    count.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                }
            }

            allUsers = selectAll.getResultList();
            allUsersNum = count.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }

        return new PaginatedResponse<>(
                allUsers,
                allUsersNum,
                Math.ceilDiv(allUsersNum, pageRequest.getSize())
        );
    }

    @Override
    public Optional<User> findById(Long id) {
        Optional<User> user = Optional.empty();

        String jpq = "select u from User u where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<User> selectById = em.createQuery(jpq, User.class);
            selectById.setParameter(1, id);
            user = Optional.of(selectById.getSingleResult());
            tr.commit();

        } catch (NoResultException ex) {
            user = Optional.empty();
        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
        }
        return user;
    }

    @Override
    public boolean existsById(Long id) {
        boolean exists = false;

        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsById = em.createQuery(jpq, Boolean.class);
            existsById.setParameter(1, id);
            exists = existsById.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return exists;
    }

    @Override
    public int delete(User user) throws IOException {
        return deleteById(user.getId());
    }

    @Override
    public int deleteById(Long id) throws IOException {
        int rowsAffected = 0;

        String jpq = "delete from User u where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            Query deleteById = em.createQuery(jpq);
            deleteById.setParameter(1, id);
            rowsAffected = deleteById.executeUpdate();

            if (rowsAffected != 1) {
                throw new MultipleDeletedRowsException("Users");
            }

            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return rowsAffected;
    }

    @Override
    public PaginatedResponse<User> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        List<User> allUsers = new ArrayList<>();
        long allUsersNum = 0;

        String filterPart = getValidFilter(filterData);
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpq = "select u from User u where u.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from User u where u.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<User> selectAll = em.createQuery(jpq, User.class);
            selectAll.setFirstResult(pageRequest.getPage() * pageRequest.getSize());
            selectAll.setMaxResults(pageRequest.getSize());

            TypedQuery<Long> count = em.createQuery(countQuery, Long.class);

            if (!filterPart.isEmpty()) {
                for (Map.Entry<String, String> entry : filterData.entrySet()) {
                    selectAll.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                    count.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                }
            }

            allUsers = selectAll.getResultList();
            allUsersNum = count.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }

        return new PaginatedResponse<>(
                allUsers,
                allUsersNum,
                Math.ceilDiv(allUsersNum, pageRequest.getSize())
        );
    }

    @Override
    public Optional<User> findByIdAndArchivedFalse(Long id) {
        Optional<User> foundOptional = findById(id);

        if (foundOptional.isPresent() && !foundOptional.get().isArchived()) {
            return foundOptional;
        }

        return Optional.empty();
    }

    @Override
    public Optional<User> findByUsernameAndArchivedFalse(String username) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        Optional<User> user = Optional.empty();

        try {
            tr.begin();
            TypedQuery<User> selectByUsername = em.createQuery("select u from User u where u.username = ?1 and u.archived = false", User.class);
            selectByUsername.setParameter(1, username);
            user = Optional.of(selectByUsername.getSingleResult());
            tr.commit();

        } catch (NoResultException ex) {
            user = Optional.empty();
        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
        }

        return user;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        boolean exists = false;

        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.archived = false and u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsById = em.createQuery(jpq, Boolean.class);
            existsById.setParameter(1, id);
            exists = existsById.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return exists;
    }

    @Override
    public boolean existsByUsername(String username) {
        boolean exists = false;

        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.username = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsByUsername = em.createQuery(jpq, Boolean.class);
            existsByUsername.setParameter(1, username);
            exists = existsByUsername.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return exists;
    }

    @Override
    public boolean existsByEmail(String email) {
        boolean exists = false;

        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.email = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsByEmail = em.createQuery(jpq, Boolean.class);
            existsByEmail.setParameter(1, email);
            exists = existsByEmail.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return exists;
    }

    @Override
    public int archive(User user) {
        return archiveById(user.getId());
    }

    @Override
    public int archiveById(Long id) {
        int rowsAffected = 0;

        String jpq = "update User u set u.archived = true where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            Query archiveById = em.createQuery(jpq);
            archiveById.setParameter(1, id);
            rowsAffected = archiveById.executeUpdate();

            if (rowsAffected != 1) {
                throw new MultipleDeletedRowsException("Users");
            }

            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return rowsAffected;
    }

    @Override
    public int updatePasswordById(Long id, String newPassword) {
        int rowsAffected = 0;

        String jpq = "update User u set u.password = ?1 where u.id = ?2";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            Query updatePassword = em.createQuery(jpq);
            updatePassword.setParameter(1, newPassword);
            updatePassword.setParameter(2, id);
            rowsAffected = updatePassword.executeUpdate();

            if (rowsAffected != 1) {
                throw new MultipleDeletedRowsException("Users");
            }

            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return rowsAffected;
    }

    private void setId(User user, Long id) {
        Class<? extends User> userClass = user.getClass();

        try {
            Field idField = userClass.getDeclaredField("id");
            idField.setAccessible(true);
            idField.set(user, id);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    private String getValidFilter(Map<String, String> filterData) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, String> entry : filterData.entrySet()) {
            String key = entry.getKey();
            if (key.equals("role")) {
                filterPart.append(" and lower(cast(u.")
                        .append(key)
                        .append(" as string)");
            } else {
                filterPart.append(" and lower(u.")
                        .append(key);
            }
            filterPart.append(") like lower(:")
                    .append(entry.getKey())
                    .append(")");
        }
        return jpqlUtil.getValidJpqlPart(filterPart.toString());
    }
}
