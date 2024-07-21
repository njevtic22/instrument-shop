package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.User;
import com.instrument.shop.service.impl.BoughtInstrumentServiceImpl;

import java.util.Map;

@ImplementedBy(BoughtInstrumentServiceImpl.class)
public interface BoughtInstrumentService {
    void buy(User customer, Map<Long, Integer> instrumentQuantity, float paid);

    PaginatedResponse<BoughtInstrument> getAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    PaginatedResponse<BoughtInstrument> getAllByCustomer(User customer, Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    BoughtInstrument getById(Long id);
}
