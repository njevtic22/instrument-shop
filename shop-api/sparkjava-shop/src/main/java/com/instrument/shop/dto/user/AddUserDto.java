package com.instrument.shop.dto.user;

public class AddUserDto extends RequestUserDto {
    private final String role;
    private final String password;
    private final String repeatedPassword;

    protected AddUserDto(String name, String surname, String email, String username, String role, String password, String repeatedPassword) {
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
