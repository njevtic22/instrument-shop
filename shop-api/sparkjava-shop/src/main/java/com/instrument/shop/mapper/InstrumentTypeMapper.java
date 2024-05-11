package com.instrument.shop.mapper;

import com.instrument.shop.dto.instrumentType.AddInstrumentTypeDto;
import com.instrument.shop.dto.instrumentType.InstrumentTypeViewDto;
import com.instrument.shop.model.InstrumentType;
import jakarta.inject.Singleton;

@Singleton
public class InstrumentTypeMapper {
    public InstrumentType toModel(AddInstrumentTypeDto addDto) {
        return new InstrumentType(
                addDto.getName(),
                false
        );
    }

    public InstrumentTypeViewDto toViewDto(InstrumentType type) {
        return new InstrumentTypeViewDto(
                type.getId(),
                type.getName()
        );
    }
}
