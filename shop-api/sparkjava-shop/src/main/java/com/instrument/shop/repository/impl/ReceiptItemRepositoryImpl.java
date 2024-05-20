package com.instrument.shop.repository.impl;

import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.ReceiptItemRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;

@Singleton
public class ReceiptItemRepositoryImpl implements ReceiptItemRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public ReceiptItemRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public List<ReceiptItem> saveAll(Iterable<ReceiptItem> items) {
        EntityManager em = emf.createEntityManager();
        List<ReceiptItem> saved = repoUtil.saveAll(em, items);
        em.close();
        return saved;
    }

    @Override
    public List<ReceiptItem> findAllByReceiptId(Long receiptId) {
        List<ReceiptItem> allItems = new ArrayList<>();
        String jpq = "select ri from ReceiptItem ri where ri.receipt.id = ?1 order by ri.id asc";

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<ReceiptItem> selectAll = em.createQuery(jpq, ReceiptItem.class);
            selectAll.setParameter(1, receiptId);
            allItems = selectAll.getResultList();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return allItems;
    }

}
