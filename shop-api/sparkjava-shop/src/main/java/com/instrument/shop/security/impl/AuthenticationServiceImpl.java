package com.instrument.shop.security.impl;

import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.InvalidPasswordException;
import com.instrument.shop.core.error.exception.InvalidUsernameException;
import com.instrument.shop.model.User;
import com.instrument.shop.security.AuthenticationService;
import com.instrument.shop.security.TokenUtils;
import com.instrument.shop.service.UserService;
import com.instrument.shop.util.Pair;
import io.jsonwebtoken.JwtException;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.io.IOException;

@Singleton
public class AuthenticationServiceImpl implements AuthenticationService {
    private final UserService service;
    private final PasswordEncoder encoder;
    private final TokenUtils tokenUtils;

    @Inject
    public AuthenticationServiceImpl(UserService service, PasswordEncoder encoder, TokenUtils tokenUtils) {
        this.service = service;
        this.encoder = encoder;
        this.tokenUtils = tokenUtils;
    }

    @Override
    public Pair<String, String> login(String username, String password) {
        User found = null;
        try {
            found = service.getByUsername(username);
        } catch (EntityNotFoundException e) {
            throw new InvalidUsernameException(e);
        }

        if (!encoder.matches(password, found.getPassword())) {
            throw new InvalidPasswordException("Invalid password");
        }

        return getTokenRolePair(found);
    }

    @Override
    public Pair<String, String> registerUser(User toRegister, String repeatedPassword) throws IOException {
        User registered = service.add(toRegister, repeatedPassword);
        return getTokenRolePair(registered);
    }

    @Override
    public User getUserFromToken(String jwt) {
        String username = tokenUtils.getUsernameFromToken(jwt);

        try {
            return service.getByUsername(username);
        } catch (EntityNotFoundException e) {
            throw new JwtException("Invalid token.", e);
        }
    }

    private Pair<String, String> getTokenRolePair(User user) {
        String token = tokenUtils.generateToken(user.getUsername());
        return new Pair<>(token, user.getRole().toString());
    }
}
