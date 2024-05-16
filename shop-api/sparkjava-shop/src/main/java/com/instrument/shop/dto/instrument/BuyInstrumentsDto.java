package com.instrument.shop.dto.instrument;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Positive;

import java.util.Map;

public class BuyInstrumentsDto {
    @NotEmpty
    private final Map<@Positive Long, @Positive Long> instrumentQuantity;

    public BuyInstrumentsDto(Map<Long, Long> instrumentQuantity) {
        this.instrumentQuantity = instrumentQuantity;
    }

    public Map<Long, Long> getInstrumentQuantity() {
        return instrumentQuantity;
    }
}
