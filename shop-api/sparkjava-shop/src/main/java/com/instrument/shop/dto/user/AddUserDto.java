package com.instrument.shop.dto.user;

import com.instrument.shop.core.validation.annotation.Password;
import jakarta.validation.constraints.NotBlank;

public class AddUserDto extends RequestUserDto {
    @NotBlank(message = "Role must not be blank")
    private final String role;

    @Password
    private final String password;

    @NotBlank(message = "Repeated password must not be blank")
    private final String repeatedPassword;

    public AddUserDto(String name, String surname, String email, String username, String role, String password, String repeatedPassword) {
        super(name, surname, email, username);
        this.role = role;
        this.password = password;
        this.repeatedPassword = repeatedPassword;
    }


    public String getRole() {
        return role;
    }

    public String getPassword() {
        return password;
    }

    public String getRepeatedPassword() {
        return repeatedPassword;
    }
}
