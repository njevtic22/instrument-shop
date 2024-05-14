package com.instrument.shop.repository;

import com.instrument.shop.core.error.exception.MultipleAffectedRowsException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.model.DatabaseEntity;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Singleton
public class RepositoryUtil {
    public long count(EntityManager em, String jpq) {
        long counted = 0;

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Long> count = em.createQuery(jpq, long.class);
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

    public <T extends DatabaseEntity> T save(EntityManager em, T entity) {
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            if (entity.getId() == null) {
                em.persist(entity);
            } else {
                entity = em.merge(entity);
            }
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return entity;
    }

    public <T extends DatabaseEntity> List<T> saveAll(EntityManager em, Iterable<T> entities) {
        ArrayList<T> savedEntities = new ArrayList<>(10);

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            int i = 1;
            for (T entity : entities) {
                if (entity.getId() == null) {
                    em.persist(entity);
                    savedEntities.add(entity);
                } else {
                    savedEntities.add(em.merge(entity));
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

        return savedEntities;
    }

    public <T extends DatabaseEntity> PaginatedResponse<T> findAll(
            EntityManager em,
            String jpq,
            String countQuery,
            Class<T> clazz,
            boolean hasFilter,
            Map<String, String> filterData,
            PageRequest pageRequest
    ) {
        List<T> allEntities = new ArrayList<>();
        long allEntitiesNum = 0;

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<T> selectAll = em.createQuery(jpq, clazz);
            selectAll.setFirstResult(pageRequest.getPage() * pageRequest.getSize());
            selectAll.setMaxResults(pageRequest.getSize());

            TypedQuery<Long> count = em.createQuery(countQuery, long.class);

            if (hasFilter) {
                for (Map.Entry<String, String> entry : filterData.entrySet()) {
                    selectAll.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                    count.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                }
            }

            allEntities = selectAll.getResultList();
            allEntitiesNum = count.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }

        return new PaginatedResponse<>(
                allEntities,
                allEntitiesNum,
                Math.ceilDiv(allEntitiesNum, pageRequest.getSize())
        );
    }

    public <T extends DatabaseEntity> Optional<T> findByUniqueProperty(EntityManager em, String jpq, Class<T> clazz, Object propertyValue) {
        Optional<T> entity = Optional.empty();

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<T> selectById = em.createQuery(jpq, clazz);
            selectById.setParameter(1, propertyValue);
            entity = Optional.of(selectById.getSingleResult());
            tr.commit();

        } catch (NoResultException ex) {
            entity = Optional.empty();
        } finally {
            if (tr.isActive()) {
                tr.rollback();
            }
        }
        return entity;
    }

    public boolean existsByUniqueProperty(EntityManager em, String jpq, Object propertyValue) {
        boolean exists = false;

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsById = em.createQuery(jpq, boolean.class);
            existsById.setParameter(1, propertyValue);
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

    public int updateByUniqueProperty(EntityManager em, String jpq, Object propertyValue, String tableName, String operation) {
        int rowsAffected = 0;

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            Query deleteById = em.createQuery(jpq);
            deleteById.setParameter(1, propertyValue);
            rowsAffected = deleteById.executeUpdate();

            if (rowsAffected != 1) {
                throw new MultipleAffectedRowsException(tableName, operation);
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

    public int update(EntityManager em, String jpq, Map<Integer, Object> propertyValues, int allowedAffected, String tableName, String operation) {
        int rowsAffected = 0;

        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            Query update = em.createQuery(jpq);
            for (Map.Entry<Integer, Object> entry : propertyValues.entrySet()) {
                update.setParameter(entry.getKey(), entry.getValue());
            }

            rowsAffected = update.executeUpdate();

            if (rowsAffected > 0 && rowsAffected != allowedAffected) {
                throw new MultipleAffectedRowsException(tableName, operation);
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

    public int update(EntityManager em, String jpq, Map<Integer, Object> propertyValues) {
        return update(em, jpq, propertyValues, -1, "", "");
    }
}
