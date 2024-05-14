package com.instrument.shop.service.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.repository.AvailableInstrumentRepository;
import com.instrument.shop.service.AvailableInstrumentService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.Map;

@Singleton
public class AvailableInstrumentServiceImpl implements AvailableInstrumentService {
    private final AvailableInstrumentRepository repository;

    @Inject
    public AvailableInstrumentServiceImpl(AvailableInstrumentRepository repository) {
        this.repository = repository;
    }

    @Override
    public AvailableInstrument add(AvailableInstrument entity) {
        return null;
    }

    @Override
    public PaginatedResponse<AvailableInstrument> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByArchivedFalse(filterData, sort, pageRequest);
    }

    @Override
    public AvailableInstrument getById(Long aLong) {
        return null;
    }

    @Override
    public AvailableInstrument update(Long aLong, AvailableInstrument changes) {
        return null;
    }

    @Override
    public void delete(Long aLong) {

    }

    @Override
    public void validateCode(String code) {

    }

    @Override
    public void validateDescription(String description) {

    }
}
