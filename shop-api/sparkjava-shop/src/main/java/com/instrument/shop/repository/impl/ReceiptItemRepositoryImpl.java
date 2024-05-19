package com.instrument.shop.repository.impl;

import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.ReceiptItemRepository;
import com.instrument.shop.repository.RepositoryUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;

@Singleton
public class ReceiptItemRepositoryImpl implements ReceiptItemRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;

    @Inject
    public ReceiptItemRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
    }

    @Override
    public List<ReceiptItem> saveAll(Iterable<ReceiptItem> items) {
        EntityManager em = emf.createEntityManager();
        List<ReceiptItem> saved = repoUtil.saveAll(em, items);
        em.close();
        return saved;
    }
}
