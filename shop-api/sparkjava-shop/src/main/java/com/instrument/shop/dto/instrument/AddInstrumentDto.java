package com.instrument.shop.dto.instrument;

public class AddInstrumentDto extends RequestInstrumentDto {
    public AddInstrumentDto(String code, String name, String mark, String description, float price, int quantity, Long typeId) {
        super(code, name, mark, description, price, quantity, typeId);
    }
}
