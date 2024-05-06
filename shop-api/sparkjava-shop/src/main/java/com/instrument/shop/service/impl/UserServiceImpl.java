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
import com.instrument.shop.util.Strings;
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

        User toAdd = new User(
                newUser.getName(),
                newUser.getSurname(),
                newUser.getEmail(),
                newUser.getUsername(),
                encoder.encode(newUser.getPassword()),
                false,
                newUser.getRole()
        );

        return repository.save(toAdd);
    }

    @Override
    public PaginatedResponse<User> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByArchivedFalse(filterData, sort, pageRequest);
    }

    @Override
    public User getByUsername(String username) {
        Strings.requireNonBlank(username, "Username must not be blank");

        return repository.findByUsernameAndArchivedFalse(username)
                .orElseThrow(() -> new EntityNotFoundException("User", "username", username));
    }

    @Override
    public User getById(Long id) {
        Objects.requireNonNull(id, "User id must not be null");
        return repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("User", id));
    }

    @Override
    public User update(Long id, User changes) throws IOException {
        Objects.requireNonNull(changes, "User changes must not be null.");

        User existing = getById(id);

        if (!existing.getEmail().equals(changes.getEmail())) {
            validateEmail(changes.getEmail());
        }
        if (!existing.getUsername().equals(changes.getUsername())) {
            validateUsername(changes.getUsername());
        }

        User updated = new User(
                existing.getId(),
                changes.getName(),
                changes.getSurname(),
                changes.getEmail(),
                changes.getUsername(),
                existing.getPassword(),
                existing.isArchived(),
                existing.getRole()
        );

        return repository.save(updated);
    }

    @Override
    public void delete(Long id) throws IOException {
        Objects.requireNonNull(id, "Id must not be null");

        if (!repository.existsByIdAndArchivedFalse(id)) {
            throw new EntityNotFoundException("User", id);
        }

        repository.archiveById(id);
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

    @Override
    public void changePassword(User authenticated, String oldPassword, String newPassword, String repeatedPassword) throws IOException {
        validatePasswordMatch(authenticated, oldPassword, newPassword, repeatedPassword);

        repository.updatePasswordById(authenticated.getId(), encoder.encode(newPassword));
    }

    private void validatePasswordMatch(User existingUser, String oldPassword, String newPassword, String repeatedPassword) {
        if (!newPassword.equals(repeatedPassword)) {
            throw new InvalidPasswordException("New password and repeated password do not match");
        }

        if (!encoder.matches(oldPassword, existingUser.getPassword())) {
            throw new InvalidPasswordException("Incorrect password");
        }
    }
}
