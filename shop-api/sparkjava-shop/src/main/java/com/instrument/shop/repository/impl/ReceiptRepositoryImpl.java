package com.instrument.shop.repository.impl;

import com.instrument.shop.model.Receipt;
import com.instrument.shop.repository.ReceiptRepository;
import com.instrument.shop.repository.RepositoryUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

@Singleton
public class ReceiptRepositoryImpl implements ReceiptRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;

    @Inject
    public ReceiptRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
    }

    @Override
    public long count() {
        String jpq = "select count(*) from Receipt r";
        EntityManager em = emf.createEntityManager();
        long counted = repoUtil.count(em, jpq);
        em.close();
        return counted;
    }

    @Override
    public Receipt save(Receipt receipt) {
        EntityManager em = emf.createEntityManager();
        Receipt saved = repoUtil.save(em, receipt);
        em.close();
        return saved;
    }

    @Override
    public boolean existsByCode(String code) {
        String jpq = "select case when(count(*) = 1) then true else false end from Receipt r where r.code = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, code);
        em.close();
        return exists;
    }
}
