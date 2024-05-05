package com.instrument.shop.repository.impl;

import com.instrument.shop.core.error.exception.EntityNotFoundException;
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
import jakarta.persistence.TypedQuery;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

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

        String jpql = "select count(*) from User u";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Long> count = em.createQuery(jpql, Long.class);
            counted = count.getSingleResult();
            tr.commit();

        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
        }
        return counted;
    }

    @Override
    public User save(User user) throws IOException {
        if (user.getId() == null) {
            setId(user, userId.next());
        }

        data.put(user.getId(), user);
        serializer.serialize(data);
        return user;
    }

    @Override
    public List<User> saveAll(Iterable<User> users) throws IOException {
        ArrayList<User> savedUsers = new ArrayList<>(10);

        for (User user : users) {
            if (user.getId() == null) {
                setId(user, userId.next());
            }

            data.put(user.getId(), user);
            savedUsers.add(user);
        }

        serializer.serialize(data);
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
        String jpql = "select u from User u " + filterPart + orderBy;
        String countQuery = "select count(*) from User u " + filterPart;

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<User> selectAll = em.createQuery(jpql, User.class);
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
            logger.error("Failed to get all users", ex);
        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
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

        String jpql = "select u from User u where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<User> selectById = em.createQuery(jpql, User.class);
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

        String jpql = "select case when (count(*) = 1) then true else false end from User u where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsById = em.createQuery(jpql, Boolean.class);
            existsById.setParameter(1, id);
            exists = existsById.getSingleResult();
            tr.commit();

        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
        }
        return exists;
    }

    @Override
    public void delete(User user) throws IOException {
        data.remove(user.getId(), user);
        serializer.serialize(data);
    }

    @Override
    public void deleteById(Long id) throws IOException {
        if (!existsById(id)) {
            throw new EntityNotFoundException("User", id);
        }

        data.remove(id);
        serializer.serialize(data);
    }

    @Override
    public PaginatedResponse<User> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        List<User> allUsers = new ArrayList<>();
        long allUsersNum = 0;

        String filterPart = getValidFilter(filterData);
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpql = "select u from User u where u.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from User u where u.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<User> selectAll = em.createQuery(jpql, User.class);
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
            logger.error("Failed to get all users", ex);
        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
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
        } catch (RuntimeException ex) {
            logger.error("Failed to get user by username", ex);
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

        String jpql = "select case when (count(*) = 1) then true else false end from User u where u.archived = false and u.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsById = em.createQuery(jpql, Boolean.class);
            existsById.setParameter(1, id);
            exists = existsById.getSingleResult();
            tr.commit();

        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
        }
        return exists;
    }

    @Override
    public boolean existsByUsername(String username) {
        for (User user : data.values()) {
            if (user.getUsername().equals(username)) {
                return true;
            }
        }

        return false;
    }

    @Override
    public boolean existsByEmail(String email) {
        for (User user : data.values()) {
            if (user.getEmail().equals(email)) {
                return true;
            }
        }

        return false;
    }

//    @Override
//    public void archive(User user) {
//        setArchived(user, true);
//
//        data.put(user.getId(), user);
//        serializer.serialize(data);
//    }
//
//    @Override
//    public void archiveById(Long id) {
//        User user = findByIdAndArchivedFalse(id)
//                .orElseThrow(() -> new EntityNotFoundException("User", id));
//
//        archive(user);
//    }

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
