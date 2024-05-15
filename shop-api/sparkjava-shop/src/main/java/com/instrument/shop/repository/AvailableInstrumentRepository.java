package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.repository.impl.AvailableInstrumentRepositoryImpl;

import java.util.Map;
import java.util.Optional;

@ImplementedBy(AvailableInstrumentRepositoryImpl.class)
public interface AvailableInstrumentRepository extends CrudRepository<Long, AvailableInstrument> {
    PaginatedResponse<AvailableInstrument> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    Optional<AvailableInstrument> findByIdAndArchivedFalse(Long id);

    boolean existsByIdAndArchivedFalse(Long id);

    boolean existsByCode(String code);

    int archive(AvailableInstrument instrument);

    int archiveById(Long id);
}
