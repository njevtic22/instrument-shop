package com.instrument.shop.dto.instrument;

import com.instrument.shop.dto.image.ImageViewDto;

import java.util.List;

public abstract class InstrumentViewDto {
    private final Long id;
    private final String code;
    private final String name;
    private final String mark;
    private final String description;
    private final float price;
    private final List<ImageViewDto> images;
    private final String type;

    public InstrumentViewDto(
            Long id,
            String code,
            String name,
            String mark,
            String description,
            float price,
            List<ImageViewDto> images,
            String type
    ) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.mark = mark;
        this.description = description;
        this.price = price;
        this.images = images;
        this.type = type;
    }

    public Long getId() {
        return id;
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

    public List<ImageViewDto> getImages() {
        return images;
    }

    public String getType() {
        return type;
    }
}
