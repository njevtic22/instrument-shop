package com.instrument.shop.repository.impl;

import com.instrument.shop.model.Image;
import com.instrument.shop.repository.ImageRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Singleton
public class ImageRepositoryImpl implements ImageRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public ImageRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public List<Image> saveAll(Iterable<Image> images) {
        EntityManager em = emf.createEntityManager();
        List<Image> saved = repoUtil.saveAll(em, images);
        em.close();
        return saved;
    }

    @Override
    public List<Image> findAllByIdAndArchivedFalse(Iterable<Long> ids) {
        StringBuilder builder = new StringBuilder(" where ");
        HashMap<Integer, Object> propertyValues = new HashMap<>();
        int i = 1;
        for (Long id : ids) {
            builder.append("i.id = ?").append(i).append(" or ");
            propertyValues.put(i, id);
            i++;
        }

        builder.setLength(builder.length() - 4);
        String whereClause = jpqlUtil.getValidJpqlPart(builder.toString());
        if (whereClause.isBlank()) {
            return List.of();
        }

        String jpq = "select i from Image i" + whereClause;
        List<Image> found = new ArrayList<>();
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Image> selectAllById = em.createQuery(jpq, Image.class);
            for (Map.Entry<Integer, Object> entry : propertyValues.entrySet()) {
                selectAllById.setParameter(entry.getKey(), entry.getValue());
            }
            found = selectAllById.getResultList();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }

        return found;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        String jpq = "select case when(count(*) = 1) then true else false end from Image i where i.archived = false and i.id = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, id);
        em.close();
        return exists;
    }

    @Override
    public int archive(Image image) {
        return archiveById(image.getId());
    }

    @Override
    public int archiveById(Long id) {
        String jpq = "update Image i set i.archived = true where i.id = ?1";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.updateByUniqueProperty(em, jpq, id, "images", "archive by id");
        em.close();
        return rowsAffected;
    }
}
