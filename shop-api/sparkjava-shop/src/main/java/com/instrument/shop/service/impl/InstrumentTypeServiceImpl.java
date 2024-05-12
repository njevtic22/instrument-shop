package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.repository.InstrumentTypeRepository;
import com.instrument.shop.service.InstrumentTypeService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.Map;
import java.util.Objects;

@Singleton
public class InstrumentTypeServiceImpl implements InstrumentTypeService {
    private final InstrumentTypeRepository repository;

    @Inject
    public InstrumentTypeServiceImpl(InstrumentTypeRepository repository) {
        this.repository = repository;
    }

    @Override
    public InstrumentType add(InstrumentType newType) {
        validateName(newType.getName());

        InstrumentType toAdd = new InstrumentType(
                newType.getName(),
                false
        );

        return repository.save(toAdd);
    }

    @Override
    public PaginatedResponse<InstrumentType> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByArchivedFalse(filterData, sort, pageRequest);
    }

    @Override
    public InstrumentType getById(Long id) {
        Objects.requireNonNull(id, "Instrument type must not be null");
        return repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("Instrument type", id));
    }

    @Override
    public InstrumentType update(Long aLong, InstrumentType changes) {
        return null;
    }

    @Override
    public void delete(Long aLong) {

    }

    @Override
    public void validateName(String name) {
        if (repository.existsByName(name)) {
            throw new UniquePropertyException("Name", name);
        }
    }
}
