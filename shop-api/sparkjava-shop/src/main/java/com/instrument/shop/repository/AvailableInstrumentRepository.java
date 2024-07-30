package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.repository.impl.AvailableInstrumentRepositoryImpl;

import java.util.Map;

@ImplementedBy(AvailableInstrumentRepositoryImpl.class)
public interface AvailableInstrumentRepository extends CrudRepository<Long, AvailableInstrument> {
    boolean existsByCode(String code);

    PaginatedResponse<AvailableInstrument> findCartByArchivedFalse(Long customerId, Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    boolean isInCart(Long customerId, Long instrumentId);
}
