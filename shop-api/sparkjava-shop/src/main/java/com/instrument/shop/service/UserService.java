package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.User;
import com.instrument.shop.service.impl.UserServiceImpl;

@ImplementedBy(UserServiceImpl.class)
public interface UserService extends CrudService<Long, User> {
    User add(User newUser, String repeatedPassword);

    User getByUsername(String username);

    void validateEmail(String email);

    void validateUsername(String username);

    void changePassword(User authenticated, String oldPassword, String newPassword, String repeatedPassword);

    void changeImage(User authenticated, Long imageId);
}
