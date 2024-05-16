package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.repository.impl.InstrumentTypeRepositoryImpl;

@ImplementedBy(InstrumentTypeRepositoryImpl.class)
public interface InstrumentTypeRepository extends CrudRepository<Long, InstrumentType> {
    boolean existsByName(String name);
}
