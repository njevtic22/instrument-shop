package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.User;
import com.instrument.shop.service.impl.UserServiceImpl;

import java.io.IOException;

@ImplementedBy(UserServiceImpl.class)
public interface UserService extends CrudService<Long, User> {
    User add(User newUser, String repeatedPassword) throws IOException;

    User getByUsername(String username);

    void validateEmail(String email);

    void validateUsername(String username);
}
