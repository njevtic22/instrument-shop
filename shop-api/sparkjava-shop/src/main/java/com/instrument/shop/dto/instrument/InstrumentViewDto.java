package com.instrument.shop.dto.instrument;

import com.instrument.shop.dto.image.ImageViewDto;

import java.util.List;

public record InstrumentViewDto(
        Long id,
        String code,
        String name,
        String mark,
        String description,
        float price,
        List<ImageViewDto> images,
        int quantity,
        String type
) {
}
