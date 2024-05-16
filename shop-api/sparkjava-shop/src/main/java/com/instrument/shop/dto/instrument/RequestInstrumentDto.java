package com.instrument.shop.dto.instrument;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;

public abstract class RequestInstrumentDto {
    @NotBlank(message = "Code must not be blank")
    private final String code;

    @NotBlank(message = "Name must not be blank")
    private final String name;

    @NotBlank(message = "Mark must not be blank")
    private final String mark;

    @Size(min = 1, max = 1000, message = "Description must be between 1 and 1000 characters long")
    private final String description;

    @Positive(message = "Price must be positive float")
    private final float price;

    @Positive(message = "Quantity must be positive int")
    private final int quantity;

    @Positive(message = "Type id must be positive long")
    private final Long typeId;

    protected RequestInstrumentDto(String code, String name, String mark, String description, float price, int quantity, Long typeId) {
        this.code = code;
        this.name = name;
        this.mark = mark;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.typeId = typeId;
    }

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public String getMark() {
        return mark;
    }

    public String getDescription() {
        return description;
    }

    public float getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public Long getTypeId() {
        return typeId;
    }
}
