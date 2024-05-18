package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.repository.BoughtInstrumentRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;
import java.util.Map;

@Singleton
public class BoughtInstrumentRepositoryImpl implements BoughtInstrumentRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public BoughtInstrumentRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public List<BoughtInstrument> saveAll(Iterable<BoughtInstrument> instruments) {
        return null;
    }

    @Override
    public List<BoughtInstrument> findAllById(Iterable<Long> ids) {
        return null;
    }

    @Override
    public PaginatedResponse<BoughtInstrument> findAllByOwnerId(Long ownerId, Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        // TODO: fix filter and order
        String filterPart = "where i.owner.id = :ownerId" + "";
        String orderBy = "";
        String jpq = "select i from BoughtInstrument i " + filterPart + orderBy;
        String countQuery = "select count(*) from BoughtInstrument i " + filterPart;

        filterData.put("ownerId", ownerId.toString());
        EntityManager em = emf.createEntityManager();
        PaginatedResponse<BoughtInstrument> allInstruments = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                BoughtInstrument.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
//        em.close();
        return allInstruments;
    }
}
