package com.instrument.shop.dto.user;

import com.instrument.shop.core.validation.annotation.Password;
import jakarta.validation.constraints.NotBlank;

public class RegisterUserDto extends RequestUserDto {
    @Password
    private final String password;

    @NotBlank(message = "Repeated password must not be blank")
    private final String repeatedPassword;

    public RegisterUserDto(String name, String surname, String email, String username, String password, String repeatedPassword) {
        super(name, surname, email, username);
        this.password = password;
        this.repeatedPassword = repeatedPassword;
    }

    public String getPassword() {
        return password;
    }

    public String getRepeatedPassword() {
        return repeatedPassword;
    }
}
