package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.repository.impl.BoughtInstrumentRepositoryImpl;

import java.util.List;
import java.util.Map;

@ImplementedBy(BoughtInstrumentRepositoryImpl.class)
public interface BoughtInstrumentRepository {
    List<BoughtInstrument> saveAll(Iterable<BoughtInstrument> instruments);

    PaginatedResponse<BoughtInstrument> findAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    PaginatedResponse<BoughtInstrument> findAllByOwnerId(Long ownerId, Map<String, String> filterData, Sort sort, PageRequest pageRequest);
}
