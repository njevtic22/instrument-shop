package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exceptions.InvalidPasswordException;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.service.UserService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;

@Singleton
public class UserServiceImpl implements UserService {
    private final UserRepository repository;

    @Inject
    public UserServiceImpl(UserRepository repository) {
        this.repository = repository;
    }

    @Override
    public User add(User newUser, String repeatedPassword) {
        if (!newUser.getPassword().equals(repeatedPassword)) {     // passwords are not encoded
            throw new InvalidPasswordException("New password and repeated password do not match.");
        }
        return add(newUser);
    }

    @Override
    public User add(User newUser) {
        // TODO: validateEmail
        // TODO: validateUsername

        // TODO: encode password
        newUser.setPassword("ENCODED " + newUser.getPassword());
        newUser.setArchived(false);

        return repository.save(newUser);
    }

    @Override
    public List<User> getAll() {
        return repository.findAll();
    }
}
