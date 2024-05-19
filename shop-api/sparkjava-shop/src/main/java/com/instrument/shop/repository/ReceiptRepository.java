package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.repository.impl.ReceiptRepositoryImpl;

@ImplementedBy(ReceiptRepositoryImpl.class)
public interface ReceiptRepository {
    long count();

    Receipt save(Receipt receipt);

    boolean existsByCode(String code);
}
