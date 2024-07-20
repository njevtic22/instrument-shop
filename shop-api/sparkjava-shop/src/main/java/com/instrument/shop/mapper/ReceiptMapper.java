package com.instrument.shop.mapper;

import com.instrument.shop.dto.receipt.ReceiptItemViewDto;
import com.instrument.shop.dto.receipt.ReceiptViewDto;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.model.ReceiptItem;
import jakarta.inject.Singleton;

import java.time.LocalDateTime;

@Singleton
public class ReceiptMapper {
    public ReceiptViewDto toViewDto(Receipt receipt) {
        return new ReceiptViewDto(
                receipt.getId(),
                receipt.getCode(),
                receipt.getTotalPrice(),
                receipt.getPaid(),
                receipt.getChange(),
                dateToArray(receipt.getIssuedAt())
        );
    }

    public ReceiptItemViewDto toViewDto(ReceiptItem item) {
        BoughtInstrument product = item.getProduct();
        return new ReceiptItemViewDto(
                item.getId(),
                item.getProductQuantity(),
                product.getId(),
                product.getName(),
                product.getPrice()
        );
    }

    private int[] dateToArray(LocalDateTime date) {
        return new int[]{
                date.getYear(),
                date.getMonthValue(),
                date.getDayOfMonth(),
                date.getHour(),
                date.getMinute(),
                date.getSecond(),
                date.getNano(),
        };
    }
}
