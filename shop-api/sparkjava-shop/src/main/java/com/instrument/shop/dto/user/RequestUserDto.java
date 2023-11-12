package com.instrument.shop.dto.user;

public abstract class RequestUserDto {
    private final String name;
    private final String surname;
    private final String email;
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
