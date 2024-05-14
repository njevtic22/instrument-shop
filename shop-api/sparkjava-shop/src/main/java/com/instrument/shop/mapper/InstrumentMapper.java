package com.instrument.shop.mapper;

import com.instrument.shop.dto.image.ImageViewDto;
import com.instrument.shop.dto.instrument.InstrumentViewDto;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.Image;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.ArrayList;
import java.util.List;

@Singleton
public class InstrumentMapper {
    private final ImageMapper imageMapper;

    @Inject
    public InstrumentMapper(ImageMapper imageMapper) {
        this.imageMapper = imageMapper;
    }

    public InstrumentViewDto toViewDto(AvailableInstrument instrument) {
        List<Image> images = instrument.getImages();
        ArrayList<ImageViewDto> imagesDto = new ArrayList<>(images.size());
        for (Image image : images) {
            imagesDto.add(imageMapper.toViewDto(image));
        }

        return new InstrumentViewDto(
                instrument.getId(),
                instrument.getCode(),
                instrument.getName(),
                instrument.getMark(),
                instrument.getDescription(),
                instrument.getPrice(),
                imagesDto,
                instrument.getQuantity(),
                instrument.getType().getName()
        );
    }
}
