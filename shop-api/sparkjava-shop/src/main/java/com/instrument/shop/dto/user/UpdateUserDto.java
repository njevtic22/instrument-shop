package com.instrument.shop.dto.user;

public class UpdateUserDto extends RequestUserDto {
    private final String role;

    public UpdateUserDto(String name, String surname, String email, String username, String role) {
        super(name, surname, email, username);
        this.role = role;
    }

    public String getRole() {
        return role;
    }
}
