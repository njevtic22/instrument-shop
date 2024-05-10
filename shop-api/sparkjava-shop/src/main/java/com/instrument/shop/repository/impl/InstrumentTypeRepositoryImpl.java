package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.repository.InstrumentTypeRepository;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Singleton
public class InstrumentTypeRepositoryImpl implements InstrumentTypeRepository {
    private final EntityManagerFactory emf;
    private final JpqlUtil jpqlUtil;

    @Inject
    public InstrumentTypeRepositoryImpl(EntityManagerFactory emf, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public InstrumentType save(InstrumentType entity) {
        return null;
    }

    @Override
    public List<InstrumentType> saveAll(Iterable<InstrumentType> entities) {
        return null;
    }

    @Override
    public PaginatedResponse<InstrumentType> findAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return null;
    }

    @Override
    public Optional<InstrumentType> findById(Long aLong) {
        return Optional.empty();
    }

    @Override
    public boolean existsById(Long aLong) {
        return false;
    }

    @Override
    public int delete(InstrumentType entity) {
        return 0;
    }

    @Override
    public int deleteById(Long aLong) {
        return 0;
    }

    @Override
    public PaginatedResponse<InstrumentType> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        List<InstrumentType> allTypes = new ArrayList<>();
        long allTypesNum = 0;

        String filterPart = jpqlUtil.getValidFilter(filterData, "it");
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpq = "select it from InstrumentType it where it.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from InstrumentType it where it.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        EntityTransaction tr = em.getTransaction();
        try {
            tr.begin();
            TypedQuery<InstrumentType> selectAll = em.createQuery(jpq, InstrumentType.class);
            selectAll.setFirstResult(pageRequest.getPage() * pageRequest.getSize());
            selectAll.setMaxResults(pageRequest.getSize());

            TypedQuery<Long> count = em.createQuery(countQuery, Long.class);

            if (!filterPart.isEmpty()) {
                for (Map.Entry<String, String> entry : filterData.entrySet()) {
                    selectAll.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                    count.setParameter(entry.getKey() , "%" + entry.getValue() + "%");
                }
            }

            allTypes = selectAll.getResultList();
            allTypesNum = count.getSingleResult();
            tr.commit();

        } catch (RuntimeException ex) {
            if (tr.isActive()) {
                tr.rollback();
            }
            throw ex;
        }

        return new PaginatedResponse<>(
                allTypes,
                allTypesNum,
                Math.ceilDiv(allTypesNum, pageRequest.getSize())
        );
    }

    @Override
    public Optional<InstrumentType> findByIdAndArchivedFalse(Long id) {
        return Optional.empty();
    }

    @Override
    public boolean existsByName(String name) {
        return false;
    }

    @Override
    public int archive(InstrumentType type) {
        return 0;
    }

    @Override
    public int archiveById(Long id) {
        return 0;
    }
}
