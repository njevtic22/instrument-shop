package com.instrument.shop.dto.instrument;

public class UpdateInstrumentDto extends RequestInstrumentDto {
    public UpdateInstrumentDto(String code, String name, String mark, String description, float price, int quantity, Long typeId) {
        super(code, name, mark, description, price, quantity, typeId);
    }
}
