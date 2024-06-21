package com.instrument.shop.service.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.ReceiptItemRepository;
import com.instrument.shop.service.ReceiptItemService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;
import java.util.Map;

@Singleton
public class ReceiptItemServiceImpl implements ReceiptItemService {
    private final ReceiptItemRepository repository;

    @Inject
    public ReceiptItemServiceImpl(ReceiptItemRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<ReceiptItem> saveAll(Iterable<ReceiptItem> items) {
        return repository.saveAll(items);
    }

    @Override
    public PaginatedResponse<ReceiptItem> getAllByReceiptId(Long receiptId, Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByReceiptId(receiptId, filterData, sort, pageRequest);
    }
}
