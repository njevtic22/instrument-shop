package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.repository.impl.ReceiptRepositoryImpl;

import java.util.Map;

@ImplementedBy(ReceiptRepositoryImpl.class)
public interface ReceiptRepository {
    long count();

    Receipt save(Receipt receipt);

    PaginatedResponse<Receipt> findAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    boolean existsByCode(String code);
}
