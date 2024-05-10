package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.repository.impl.InstrumentTypeRepositoryImpl;

import java.util.Map;
import java.util.Optional;

@ImplementedBy(InstrumentTypeRepositoryImpl.class)
public interface InstrumentTypeRepository extends CrudRepository<Long, InstrumentType> {
    PaginatedResponse<InstrumentType> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    Optional<InstrumentType> findByIdAndArchivedFalse(Long id);

    boolean existsByName(String name);

    int archive(InstrumentType type);

    int archiveById(Long id);
}
