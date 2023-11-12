package com.instrument.shop.mapper;

import com.instrument.shop.dto.user.AddUserDto;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import jakarta.inject.Singleton;

@Singleton
public class UserMapper {
    public User toModel(AddUserDto addUserDto) {
        return new User(
                addUserDto.getName(),
                addUserDto.getSurname(),
                addUserDto.getEmail(),
                addUserDto.getUsername(),
                addUserDto.getPassword(),
                false,
                Role.valueOf(addUserDto.getRole())
        );
    }
}
