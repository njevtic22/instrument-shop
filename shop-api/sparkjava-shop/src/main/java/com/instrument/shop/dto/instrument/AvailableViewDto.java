package com.instrument.shop.dto.instrument;

import com.instrument.shop.dto.image.ImageViewDto;

import java.util.List;

public class AvailableViewDto extends InstrumentViewDto {
    private final int quantity;

    public AvailableViewDto(Long id, String code, String name, String mark, String description, float price, List<ImageViewDto> images, String type, int quantity) {
        super(id, code, name, mark, description, price, images, type);
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }
}
