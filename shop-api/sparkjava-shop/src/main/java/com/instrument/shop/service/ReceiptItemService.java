package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.service.impl.ReceiptItemServiceImpl;

import java.util.List;
import java.util.Map;

@ImplementedBy(ReceiptItemServiceImpl.class)
public interface ReceiptItemService {
    List<ReceiptItem> saveAll(Iterable<ReceiptItem> items);

    PaginatedResponse<ReceiptItem> getAllByReceiptId(Long receiptId, Map<String, Object> filterData, Sort sort, PageRequest pageRequest);
}
