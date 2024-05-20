package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.repository.impl.ReceiptItemRepositoryImpl;

import java.util.List;

@ImplementedBy(ReceiptItemRepositoryImpl.class)
public interface ReceiptItemRepository {
    List<ReceiptItem> saveAll(Iterable<ReceiptItem> items);

    List<ReceiptItem> findAllByReceiptId(Long receiptId);
}
