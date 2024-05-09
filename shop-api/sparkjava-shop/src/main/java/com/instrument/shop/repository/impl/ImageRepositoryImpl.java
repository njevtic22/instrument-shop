package com.instrument.shop.repository.impl;

import com.instrument.shop.model.Image;
import com.instrument.shop.repository.ImageRepository;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

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
}
