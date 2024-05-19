package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.service.impl.ReceiptServiceImpl;

@ImplementedBy(ReceiptServiceImpl.class)
public interface ReceiptService {
    Receipt add(Receipt newReceipt);

    void validateCode(String code);
}
