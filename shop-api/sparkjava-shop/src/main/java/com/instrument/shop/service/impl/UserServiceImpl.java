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
        return repository.findAllByArchivedFalse();
    }

    @Override
    public User getById(Long id) {
        Objects.requireNonNull(id, "User id must not be null");
        return repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("User", id));
    }

    @Override
    public User update(Long id, User changes) {
        User existing = getById(id);

        // TODO: validate email
        // TODO: validate username

        if (!existing.getRole().equals(changes.getRole())) {
            if (existing.isCustomer()) {
                throw new IllegalArgumentException("Customer can not be promoted to " + changes.getRole().toString().toLowerCase());
            }
            if (changes.isCustomer()) {
                throw new IllegalArgumentException("Manager or salesman can not be demoted to " + changes.getRole().toString().toLowerCase());
            }
        }

        existing.setName(changes.getName());
        existing.setSurname(changes.getSurname());
        existing.setEmail(changes.getEmail());
        existing.setUsername(changes.getUsername());
        existing.setRole(changes.getRole());

        return repository.save(existing);
    }

    @Override
    public void delete(Long id) {
        Objects.requireNonNull(id, "Id must not be null");

//        if (!repository.existsById(id)) {
//            throw new EntityNotFoundException("User", id);
//        }
//
//        repository.deleteById(id);

        User foundById = getById(id);
        foundById.setArchived(true);
        repository.save(foundById);
    }
}
