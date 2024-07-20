package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.repository.ReceiptRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.Map;
import java.util.Optional;

@Singleton
public class ReceiptRepositoryImpl implements ReceiptRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public ReceiptRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
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
    public PaginatedResponse<Receipt> findAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidReceiptFilter(filterData, "r");
        if (!filterPart.isEmpty()) {
            filterPart = "where " + filterPart.substring(5);
        }
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpq = "select r from Receipt r " + filterPart + orderBy;
        String countQuery = "select count(*) from Receipt r " + filterPart;

        EntityManager em = emf.createEntityManager();
        PaginatedResponse<Receipt> allReceipts = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                Receipt.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
        em.close();
        return allReceipts;
    }

    @Override
    public Optional<Receipt> findById(Long id) {
        String jpq = "select r from Receipt r where r.id = ?1";
        EntityManager em = emf.createEntityManager();
        Optional<Receipt> found = repoUtil.findByUniqueProperty(em, jpq, Receipt.class, id);
        em.close();
        return found;
    }

    @Override
    public double countProfit(Map<String, Object> filterData) {
        String filterPart = jpqlUtil.getValidReceiptFilter(filterData, "r");
        if (!filterPart.isEmpty()) {
            filterPart = "where " + filterPart.substring(5);
        }
        String jpq = "select sum(r.totalPrice) from Receipt r " + filterPart;
        double profit = 0;

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Double> selectProfit = em.createQuery(jpq, double.class);


            if (!filterPart.isEmpty()) {
                for (Map.Entry<String, Object> entry : filterData.entrySet()) {
                    String key = entry.getKey();
                    Object value = repoUtil.getCorrectValue(entry.getValue());

                    selectProfit.setParameter(key, value);
                }
            }

            Double result = selectProfit.getSingleResult();
            profit = result == null ? 0 : result;
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }
        return profit;
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
