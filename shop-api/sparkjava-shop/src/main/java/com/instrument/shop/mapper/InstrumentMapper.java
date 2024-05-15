package com.instrument.shop.mapper;

import com.instrument.shop.dto.image.ImageViewDto;
import com.instrument.shop.dto.instrument.AddInstrumentDto;
import com.instrument.shop.dto.instrument.InstrumentViewDto;
import com.instrument.shop.dto.instrument.UpdateInstrumentDto;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.InstrumentType;
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

    public AvailableInstrument toModel(AddInstrumentDto addDto) {
        return new AvailableInstrument(
                addDto.getCode(),
                addDto.getName(),
                addDto.getMark(),
                addDto.getDescription(),
                addDto.getPrice(),
                null,
                addDto.getQuantity(),
                false,
                new InstrumentType(addDto.getTypeId(), "", false)
        );
    }

    public AvailableInstrument toModel(UpdateInstrumentDto updateDto) {
        return new AvailableInstrument(
                updateDto.getCode(),
                updateDto.getName(),
                updateDto.getMark(),
                updateDto.getDescription(),
                updateDto.getPrice(),
                null,
                updateDto.getQuantity(),
                false,
                new InstrumentType(updateDto.getTypeId(), "", false)
        );
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
