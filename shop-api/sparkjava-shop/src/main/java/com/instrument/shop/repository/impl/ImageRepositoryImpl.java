package com.instrument.shop.repository.impl;

import com.instrument.shop.core.error.exception.MultipleDeletedRowsException;
import com.instrument.shop.model.Image;
import com.instrument.shop.repository.ImageRepository;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;

@Singleton
public class ImageRepositoryImpl implements ImageRepository {
    private final EntityManagerFactory emf;

    @Inject
    public ImageRepositoryImpl(EntityManagerFactory emf) {
        this.emf = emf;
    }

    @Override
    public List<Image> saveAll(Iterable<Image> images) {
        ArrayList<Image> savedImages = new ArrayList<>(10);

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            int i = 1;
            for (Image image : images) {
                if (image.getId() == null) {
                    em.persist(image);
                    savedImages.add(image);
                } else {
                    savedImages.add(em.merge(image));
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

        return savedImages;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        boolean exists = false;

        String jpq = "select case when(count(*) = 1) then true else false end from Image i where i.archived = false and i.id = ?1";
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
    public int archive(Image image) {
        return archiveById(image.getId());
    }

    @Override
    public int archiveById(Long id) {
        int rowsAffected = 0;

        String jpq = "update Image i set i.archived = true where i.id = ?1";
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            Query deleteById = em.createQuery(jpq);
            deleteById.setParameter(1, id);
            rowsAffected = deleteById.executeUpdate();

            if (rowsAffected != 1) {
                throw new MultipleDeletedRowsException("Images");
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
}
