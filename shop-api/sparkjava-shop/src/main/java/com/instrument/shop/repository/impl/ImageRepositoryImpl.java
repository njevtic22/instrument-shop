package com.instrument.shop.repository.impl;

import com.instrument.shop.model.Image;
import com.instrument.shop.repository.ImageRepository;
import com.instrument.shop.repository.RepositoryUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;

@Singleton
public class ImageRepositoryImpl implements ImageRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;

    @Inject
    public ImageRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
    }

    @Override
    public List<Image> saveAll(Iterable<Image> images) {
        EntityManager em = emf.createEntityManager();
        List<Image> saved = repoUtil.saveAll(em, images);
        em.close();
        return saved;
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
