package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.repository.InstrumentTypeRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Singleton
public class InstrumentTypeRepositoryImpl implements InstrumentTypeRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public InstrumentTypeRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public InstrumentType save(InstrumentType type) {
        EntityManager em = emf.createEntityManager();
        InstrumentType saved = repoUtil.save(em, type);
        em.close();
        return saved;
    }

    @Override
    public List<InstrumentType> saveAll(Iterable<InstrumentType> types) {
        EntityManager em = emf.createEntityManager();
        List<InstrumentType> saved = repoUtil.saveAll(em, types);
        em.close();
        return saved;
    }

    @Override
    public PaginatedResponse<InstrumentType> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidFilter(filterData, "it");
        String orderBy = jpqlUtil.getValidOrderBy(sort.toString());
        String jpq = "select it from InstrumentType it where it.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from InstrumentType it where it.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        PaginatedResponse<InstrumentType> allTypes = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                InstrumentType.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
        em.close();
        return allTypes;
    }

    @Override
    public Optional<InstrumentType> findByIdAndArchivedFalse(Long id) {
        String jpq = "select it from InstrumentType it where it.archived = false and it.id = ?1";
        EntityManager em = emf.createEntityManager();
        Optional<InstrumentType> found = repoUtil.findByUniqueProperty(em, jpq, InstrumentType.class, id);
        em.close();
        return found;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        String jpq = "select case when (count(*) = 1) then true else false end from InstrumentType it where it.archived = false and it.id = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, id);
        em.close();
        return exists;
    }

    @Override
    public boolean existsByName(String name) {
        String jpq = "select case when(count(*) = 1) then true else false end from InstrumentType it where it.name = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, name);
        em.close();
        return exists;
    }

    @Override
    public int archive(InstrumentType type) {
        return archiveById(type.getId());
    }

    @Override
    public int archiveById(Long id) {
        String jpq = "update InstrumentType it set it.archived = true where it.id = ?1";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.updateByUniqueProperty(em, jpq, id, "instrument types", "archive by id");
        em.close();
        return rowsAffected;
    }
}
