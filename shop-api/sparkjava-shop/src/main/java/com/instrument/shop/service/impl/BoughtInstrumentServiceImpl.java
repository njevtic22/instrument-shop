package com.instrument.shop.service.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.repository.BoughtInstrumentRepository;
import com.instrument.shop.service.BoughtInstrumentService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.Map;

@Singleton
public class BoughtInstrumentServiceImpl implements BoughtInstrumentService {
    private final BoughtInstrumentRepository repository;

    @Inject
    public BoughtInstrumentServiceImpl(BoughtInstrumentRepository repository) {
        this.repository = repository;
    }

    @Override
    public void buy(Map<Long, Long> instrumentQuantity) {

    }

    @Override
    public PaginatedResponse<BoughtInstrument> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAll(filterData, sort, pageRequest);
    }
}
