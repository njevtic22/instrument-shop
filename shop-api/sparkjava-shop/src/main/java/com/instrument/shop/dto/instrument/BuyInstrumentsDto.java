package com.instrument.shop.dto.instrument;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Positive;

import java.util.Map;

public class BuyInstrumentsDto {
    @NotEmpty
    private final Map<@Positive Long, @Positive Integer> instrumentQuantity;

    @Positive
    private final float paid;

    public BuyInstrumentsDto(Map<Long, Integer> instrumentQuantity, float paid) {
        this.instrumentQuantity = instrumentQuantity;
        this.paid = paid;
    }

    public Map<Long, Integer> getInstrumentQuantity() {
        return instrumentQuantity;
    }

    public float getPaid() {
        return paid;
    }
}
