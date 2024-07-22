package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.repository.AvailableInstrumentRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Singleton
public class AvailableInstrumentRepositoryImpl implements AvailableInstrumentRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public AvailableInstrumentRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public AvailableInstrument save(AvailableInstrument instrument) {
        EntityManager em = emf.createEntityManager();
        AvailableInstrument saved = repoUtil.save(em, instrument);
//        em.close();
        return saved;
    }

    @Override
    public List<AvailableInstrument> saveAll(Iterable<AvailableInstrument> instruments) {
        EntityManager em = emf.createEntityManager();
        List<AvailableInstrument> saved = repoUtil.saveAll(em, instruments);
        em.close();
        return saved;
    }

    @Override
    public PaginatedResponse<AvailableInstrument> findAllByArchivedFalse(Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidAInstrumentFilter(filterData, "i");
        String orderBy = getValidOrderBy(sort);
        String jpq = "select i from AvailableInstrument i where i.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from AvailableInstrument i where i.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        PaginatedResponse<AvailableInstrument> allInstruments = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                AvailableInstrument.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
//        em.close();
        return allInstruments;
    }

    @Override
    public Optional<AvailableInstrument> findByIdAndArchivedFalse(Long id) {
        String jpq = "select i from AvailableInstrument i where i.archived = false and i.id = ?1";
        EntityManager em = emf.createEntityManager();
        Optional<AvailableInstrument> found = repoUtil.findByUniqueProperty(em, jpq, AvailableInstrument.class, id);
//        em.close();
        return found;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        String jpq = "select case when(count(*) = 1) then true else false end from AvailableInstrument i where i.archived = false and i.id = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, id);
        em.close();
        return exists;
    }

    @Override
    public boolean existsByCode(String code) {
        String jpq = "select case when (count(*) = 1) then true else false end from AvailableInstrument i where i.code = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, code);
        em.close();
        return exists;
    }

    @Override
    public PaginatedResponse<AvailableInstrument> findCartByArchivedFalse(Long customerId, Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidAInstrumentFilter(filterData, "i");
        String orderBy = getValidOrderBy(sort, "i");
        String jpq = "select i from AvailableInstrument i join i.potentialCustomers c where i.archived = false and c.id = :customerId" + filterPart + orderBy;
        String countQuery = "select count(*) from AvailableInstrument i join i.potentialCustomers c where i.archived = false and c.id = :customerId" + filterPart;

        filterData.put("customerId", customerId);
        EntityManager em = emf.createEntityManager();
        PaginatedResponse<AvailableInstrument> cart = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                AvailableInstrument.class,
                true,
                filterData,
                pageRequest
        );
//        em.close();
        return cart;
    }

    @Override
    public boolean isInCart(Long customerId, Long instrumentId) {
        String jpq = "select case when (count(*) = 1) then true else false end from AvailableInstrument i join i.potentialCustomers c where i.id = ?1 and c.id = ?2";

        boolean exists = false;
        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<Boolean> existsQuery = em.createQuery(jpq, boolean.class);
            existsQuery.setParameter(1, instrumentId);
            existsQuery.setParameter(2, customerId);
            exists = existsQuery.getSingleResult();
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
    public int archive(AvailableInstrument instrument) {
        return archiveById(instrument.getId());
    }

    @Override
    public int archiveById(Long id) {
        String jpq = "update AvailableInstrument i set i.archived = true where i.id = ?1";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.updateByUniqueProperty(em, jpq, id, "available instruments", "archive by id");
        em.close();
        return rowsAffected;
    }

    private String getValidOrderBy(Sort sort) {
        String sortStr = sort.toString();
        if (sortStr.contains("type")) {
            sortStr = sortStr.replaceAll("type", "type.name");
        }
        return jpqlUtil.getValidOrderBy(sortStr);
    }

    private String getValidOrderBy(Sort sort, String prefix) {
        String orderBy = prefix + "." + sort.property() + " " + sort.order().toString();
        String orderByNext = "";

        if (sort.sortNext() != null) {
            orderByNext = ", " + getValidOrderBy(sort.sortNext(), prefix);
        }

        return jpqlUtil.getValidOrderBy(orderBy + orderByNext);
    }
}
