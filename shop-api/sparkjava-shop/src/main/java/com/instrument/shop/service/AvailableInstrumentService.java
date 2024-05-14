package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.service.impl.AvailableInstrumentServiceImpl;

@ImplementedBy(AvailableInstrumentServiceImpl.class)
public interface AvailableInstrumentService extends CrudService<Long, AvailableInstrument> {
    void validateCode(String code);

    void validateDescription(String description);
}
