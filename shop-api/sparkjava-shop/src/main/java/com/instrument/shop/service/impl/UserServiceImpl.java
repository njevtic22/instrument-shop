package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.InvalidPasswordException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.service.UserService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;

@Singleton
public class UserServiceImpl implements UserService {
    private final UserRepository repository;
    private final PasswordEncoder encoder;

    @Inject
    public UserServiceImpl(UserRepository repository, PasswordEncoder encoder) {
        this.repository = repository;
        this.encoder = encoder;
    }

    @Override
    public User add(User newUser, String repeatedPassword) throws IOException {
        if (!newUser.getPassword().equals(repeatedPassword)) {     // passwords are not encoded
            throw new InvalidPasswordException("New password and repeated password do not match.");
        }
        return add(newUser);
    }

    @Override
    public User add(User newUser) throws IOException {
        validateEmail(newUser.getEmail());
        validateUsername(newUser.getUsername());

        newUser.setPassword(encoder.encode(newUser.getPassword()));
        newUser.setArchived(false);

        return repository.save(newUser);
    }

    @Override
    public PaginatedResponse<User> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByArchivedFalse(filterData, sort, pageRequest);
    }

    @Override
    public User getById(Long id) {
        Objects.requireNonNull(id, "User id must not be null");
        return repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("User", id));
    }

    @Override
    public User update(Long id, User changes) throws IOException {
        User existing = getById(id);

        validateEmail(changes.getEmail());
        validateUsername(changes.getUsername());

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
    public void delete(Long id) throws IOException {
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

    @Override
    public void validateEmail(String email) {
        if (repository.existsByEmail(email)) {
            throw new UniquePropertyException("Email '" + email + "' is already taken.");
        }
    }

    @Override
    public void validateUsername(String username) {
        if (repository.existsByUsername(username)) {
            throw new UniquePropertyException("Username '" + username + "' is already taken.");
        }
    }
}
