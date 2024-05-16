package com.instrument.shop.dto.instrument;

import com.instrument.shop.dto.image.ImageViewDto;

import java.util.List;

public class BoughtViewDto extends InstrumentViewDto {
    private final int owned;

    public BoughtViewDto(Long id, String code, String name, String mark, String description, float price, List<ImageViewDto> images, String type, int owned) {
        super(id, code, name, mark, description, price, images, type);
        this.owned = owned;
    }

    public int getOwned() {
        return owned;
    }
}
