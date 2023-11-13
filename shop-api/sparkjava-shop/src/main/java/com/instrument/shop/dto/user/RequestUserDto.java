package com.instrument.shop.dto.user;

import jakarta.validation.constraints.NotBlank;

public abstract class RequestUserDto {
    @NotBlank(message = "Name must not be blank")
    private final String name;

    @NotBlank(message = "Surname must not be blank")
    private final String surname;

    @NotBlank(message = "Email must not be blank")
    private final String email;

    @NotBlank(message = "Username must not be blank")
    private final String username;

    protected RequestUserDto(String name, String surname, String email, String username) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }
}
