package com.instrument.shop.mapper;

import com.instrument.shop.dto.cart.CartItemViewDto;
import com.instrument.shop.dto.image.ImageViewDto;
import com.instrument.shop.dto.instrument.AddInstrumentDto;
import com.instrument.shop.dto.instrument.AvailableViewDto;
import com.instrument.shop.dto.instrument.BoughtViewDto;
import com.instrument.shop.dto.instrument.UpdateInstrumentDto;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.InstrumentType;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.time.LocalDateTime;
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
                new InstrumentType(addDto.getTypeId(), "", false),
                null
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
                new InstrumentType(updateDto.getTypeId(), "", false),
                null
        );
    }

    public AvailableViewDto toViewDto(AvailableInstrument instrument) {
        List<ImageViewDto> imagesDto = getImageDto(instrument.getImages());

        return new AvailableViewDto(
                instrument.getId(),
                instrument.getCode(),
                instrument.getName(),
                instrument.getMark(),
                instrument.getDescription(),
                instrument.getPrice(),
                imagesDto,
                instrument.getType().getName(),
                instrument.getQuantity()
        );
    }

    public CartItemViewDto toCartItemViewDto(AvailableInstrument instrument) {
        List<ImageViewDto> imagesDto = getImageDto(instrument.getImages());

        return new CartItemViewDto(
                instrument.getId(),
                instrument.getCode(),
                instrument.getName(),
                instrument.getMark(),
                instrument.getDescription(),
                instrument.getPrice(),
                imagesDto,
                instrument.getType().getName(),
                instrument.getQuantity(),
                1
        );
    }

    public BoughtViewDto toViewDto(BoughtInstrument instrument) {
        List<ImageViewDto> imagesDto = getImageDto(instrument.getImages());

        return new BoughtViewDto(
                instrument.getId(),
                instrument.getCode(),
                instrument.getName(),
                instrument.getMark(),
                instrument.getDescription(),
                instrument.getPrice(),
                imagesDto,
                instrument.getType(),
                instrument.getOwned(),
                dateToArray(instrument.getPurchased())
        );
    }

    private List<ImageViewDto> getImageDto(List<Image> images) {
        return images
                .stream()
                .map(imageMapper::toViewDto)
                .toList();
    }

    private int[] dateToArray(LocalDateTime date) {
        return new int[]{
                date.getYear(),
                date.getMonthValue(),
                date.getDayOfMonth(),
                date.getHour(),
                date.getMinute(),
                date.getSecond(),
                date.getNano(),
        };
    }
}
