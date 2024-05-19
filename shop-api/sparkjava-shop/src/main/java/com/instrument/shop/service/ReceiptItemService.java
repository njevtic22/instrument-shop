package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.service.impl.ReceiptItemServiceImpl;

import java.util.List;

@ImplementedBy(ReceiptItemServiceImpl.class)
public interface ReceiptItemService {
    List<ReceiptItem> saveAll(Iterable<ReceiptItem> items);
}
