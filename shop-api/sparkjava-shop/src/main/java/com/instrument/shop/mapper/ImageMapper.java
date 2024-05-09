package com.instrument.shop.mapper;

import com.instrument.shop.dto.image.ImageViewDto;
import com.instrument.shop.model.Image;
import jakarta.inject.Singleton;

@Singleton
public class ImageMapper {
    public ImageViewDto toViewDto(Image image) {
        return new ImageViewDto(
                image.getId(),
                image.getUrl()
        );
    }
}
