package com.instrument.shop.dto.user;

import jakarta.validation.constraints.NotBlank;

public class UpdateUserDto extends RequestUserDto {
    @NotBlank(message = "Role must not be blank")
    private final String role;

    public UpdateUserDto(String name, String surname, String email, String username, String role) {
        super(name, surname, email, username);
        this.role = role;
    }

    public String getRole() {
        return role;
    }
}
