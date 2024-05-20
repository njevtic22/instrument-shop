package com.instrument.shop.service.impl;

import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.ReceiptItemRepository;
import com.instrument.shop.service.ReceiptItemService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;

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
    public List<ReceiptItem> getAllByReceiptId(Long receiptId) {
        return repository.findAllByReceiptId(receiptId);
    }
}
