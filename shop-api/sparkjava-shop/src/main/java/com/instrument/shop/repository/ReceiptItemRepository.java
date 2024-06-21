package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.impl.ReceiptItemRepositoryImpl;

import java.util.List;
import java.util.Map;

@ImplementedBy(ReceiptItemRepositoryImpl.class)
public interface ReceiptItemRepository {
    List<ReceiptItem> saveAll(Iterable<ReceiptItem> items);

    PaginatedResponse<ReceiptItem> findAllByReceiptId(Long receiptId, Map<String, Object> filterData, Sort sort, PageRequest pageRequest);
}
