package com.instrument.shop.dto.cart;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

public class CartDto {
    @NotNull
    @Positive
    private final Long instrumentId;

    public CartDto(Long instrumentId) {
        this.instrumentId = instrumentId;
    }

    public Long getInstrumentId() {
        return instrumentId;
    }
}
