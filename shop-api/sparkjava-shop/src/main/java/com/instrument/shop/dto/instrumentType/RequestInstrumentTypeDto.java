package com.instrument.shop.dto.instrumentType;

import jakarta.validation.constraints.NotBlank;

public abstract class RequestInstrumentTypeDto {
    @NotBlank(message = "Name must not be blank")
    private final String name;

    protected RequestInstrumentTypeDto(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
