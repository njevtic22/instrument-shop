package com.instrument.shop.dto.user;

public class UpdateUserDto extends RequestUserDto {
    public UpdateUserDto(String name, String surname, String email, String username) {
        super(name, surname, email, username);
    }
}
