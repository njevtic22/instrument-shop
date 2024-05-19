package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.service.impl.AvailableInstrumentServiceImpl;

import java.util.List;

@ImplementedBy(AvailableInstrumentServiceImpl.class)
public interface AvailableInstrumentService extends CrudService<Long, AvailableInstrument> {
    List<AvailableInstrument> saveAll(Iterable<AvailableInstrument> instruments);

    void validateCode(String code);

    void validateDescription(String description);

    AvailableInstrument addImages(Long instrumentId, Long[] imageIds);

    void deleteImages(Long instrumentId, Long[] imageIds);
}
