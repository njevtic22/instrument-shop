package com.instrument.shop.dto.receipt;

public record ReceiptViewDto(Long id, String code, float totalPrice, float paid, float change, int[] issuedAt) {
}
