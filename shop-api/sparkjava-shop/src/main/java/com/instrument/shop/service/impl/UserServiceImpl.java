package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exceptions.EntityNotFoundException;
import com.instrument.shop.core.error.exceptions.InvalidPasswordException;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.service.UserService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;
import java.util.Objects;

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

    @Override
    public User getById(Long id) {
        Objects.requireNonNull(id, "User id must not be null");
        return repository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("User", id));
    }
}
