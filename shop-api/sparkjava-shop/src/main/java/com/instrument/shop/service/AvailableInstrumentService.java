package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.User;
import com.instrument.shop.service.impl.AvailableInstrumentServiceImpl;

import java.util.List;
import java.util.Map;

@ImplementedBy(AvailableInstrumentServiceImpl.class)
public interface AvailableInstrumentService extends CrudService<Long, AvailableInstrument> {
    List<AvailableInstrument> saveAll(Iterable<AvailableInstrument> instruments);

    void validateCode(String code);

    void validateDescription(String description);

    AvailableInstrument addImages(Long instrumentId, Long[] imageIds);

    void deleteImages(Long instrumentId, Long[] imageIds);

    PaginatedResponse<AvailableInstrument> getCart(User customer, Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    void addToCart(User customer, Long instrumentId);
}
