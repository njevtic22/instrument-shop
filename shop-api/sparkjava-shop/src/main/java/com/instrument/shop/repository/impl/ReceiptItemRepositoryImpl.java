package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.ReceiptItemRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;
import java.util.Map;

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
    public PaginatedResponse<ReceiptItem> findAllByReceiptId(Long receiptId, Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidItemFilter(filterData, "ri");
        String orderBy = jpqlUtil.getValidItemOrderBy(sort);
        String jpq = "select ri from ReceiptItem ri where ri.receipt.id = ?1" + filterPart + orderBy;
        String countQuery = "select count(*) from ReceiptItem ri where ri.receipt.id = ?1" + filterPart;



        EntityManager em = emf.createEntityManager();
        PaginatedResponse<ReceiptItem> allItems = repoUtil.findAllByProperty(
                em,
                jpq,
                countQuery,
                receiptId,
                ReceiptItem.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
        em.close();
        return allItems;
    }

}
