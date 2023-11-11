package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.User;
import com.instrument.shop.service.impl.UserServiceImpl;

@ImplementedBy(UserServiceImpl.class)
public interface UserService extends CrudService<Long, User> {
    User add(User newUser, String repeatedPassword);
}
