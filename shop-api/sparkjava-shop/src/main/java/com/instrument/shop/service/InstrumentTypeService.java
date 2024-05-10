package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.service.impl.InstrumentTypeServiceImpl;

@ImplementedBy(InstrumentTypeServiceImpl.class)
public interface InstrumentTypeService extends CrudService<Long, InstrumentType> {
    void validateName(String name);
}
