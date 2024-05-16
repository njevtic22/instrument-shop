package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Singleton
public class UserRepositoryImpl implements UserRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public UserRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public User save(User user) {
        EntityManager em = emf.createEntityManager();
        User saved = repoUtil.save(em, user);
        em.close();
        return saved;
    }

    @Override
    public List<User> saveAll(Iterable<User> users) {
        EntityManager em = emf.createEntityManager();
        List<User> saved = repoUtil.saveAll(em, users);
        em.close();
        return saved;
    }

    @Override
    public PaginatedResponse<User> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidUserFilter(filterData, "u");
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpq = "select u from User u where u.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from User u where u.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        PaginatedResponse<User> allUsers = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                User.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
        em.close();
        return allUsers;
    }

    @Override
    public Optional<User> findByIdAndArchivedFalse(Long id) {
        String jpq = "select u from User u where u.archived = false and u.id = ?1";
        EntityManager em = emf.createEntityManager();
        Optional<User> found = repoUtil.findByUniqueProperty(em, jpq, User.class, id);
        em.close();
        return found;
    }

    @Override
    public Optional<User> findByUsernameAndArchivedFalse(String username) {
        String jpq = "select u from User u where u.archived = false and u.username = ?1";
        EntityManager em = emf.createEntityManager();
        Optional<User> found = repoUtil.findByUniqueProperty(em, jpq, User.class, username);
        em.close();
        return found;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.archived = false and u.id = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, id);
        em.close();
        return exists;
    }

    @Override
    public boolean existsByUsername(String username) {
        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.username = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, username);
        em.close();
        return exists;
    }

    @Override
    public boolean existsByEmail(String email) {
        String jpq = "select case when (count(*) = 1) then true else false end from User u where u.email = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, email);
        em.close();
        return exists;
    }

    @Override
    public int archive(User user) {
        return archiveById(user.getId());
    }

    @Override
    public int archiveById(Long id) {
        String jpq = "update User u set u.archived = true where u.id = ?1";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.updateByUniqueProperty(em, jpq, id, "users", "archive by id");
        em.close();
        return rowsAffected;
    }

    @Override
    public int updatePasswordById(Long id, String newPassword) {
        String jpq = "update User u set u.password = ?1 where u.id = ?2";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.update(
                em,
                jpq,
                Map.of(1, newPassword, 2, id),
                1,
                "users",
                "update password"
        );
        em.close();
        return rowsAffected;
    }

    @Override
    public int updateUserImage(Long userId, Long imageId) {
        String jpq = "update User u set u.image = (select i from Image i where i.archived = false and i.id = ?1) where u.id = ?2";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.update(em, jpq, Map.of(1, imageId, 2, userId), 1, "users", "update image");
        em.close();
        return rowsAffected;
    }
}
