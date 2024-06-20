package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.service.impl.ReceiptServiceImpl;

import java.util.Map;

@ImplementedBy(ReceiptServiceImpl.class)
public interface ReceiptService {
    Receipt add(Receipt newReceipt);

    PaginatedResponse<Receipt> getAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    Receipt getById(Long id);

    void validateCode(String code);
}
