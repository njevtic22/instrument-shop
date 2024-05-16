package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.repository.impl.AvailableInstrumentRepositoryImpl;

@ImplementedBy(AvailableInstrumentRepositoryImpl.class)
public interface AvailableInstrumentRepository extends CrudRepository<Long, AvailableInstrument> {
    boolean existsByCode(String code);
}
