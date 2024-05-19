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

    PaginatedResponse<BoughtInstrument> getAll(User customer, Map<String, String> filterData, Sort sort, PageRequest pageRequest);
}
