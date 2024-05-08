package com.instrument.shop.controller;

import com.instrument.shop.dto.auth.LoginRequestDto;
import com.instrument.shop.dto.auth.RegisterUserDto;
import com.instrument.shop.dto.auth.TokenResponse;
import com.instrument.shop.mapper.UserMapper;
import com.instrument.shop.model.User;
import com.instrument.shop.security.AuthenticationService;
import com.instrument.shop.util.Pair;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.validation.Valid;

@RequestMapping("api/auth")
public class AuthenticationController {
    private final AuthenticationService service;
    private final UserMapper mapper;

    @Inject
    public AuthenticationController(AuthenticationService service, UserMapper mapper) {
        this.service = service;
        this.mapper = mapper;
    }

    @PostMapping("/login")
    public TokenResponse login(@Valid @RequestBody LoginRequestDto loginBody) {
        Pair<String, String> loginData = service.login(loginBody.getUsername(), loginBody.getPassword());
        return new TokenResponse(loginData.first(), loginData.second());
    }

    @PostMapping("/register")
    public TokenResponse register(@Valid @RequestBody RegisterUserDto registerBody) {
        User toRegister = mapper.toModel(registerBody);
        Pair<String, String> registerData = service.registerUser(toRegister, registerBody.getRepeatedPassword());
        return new TokenResponse(registerData.first(), registerData.second());
    }
}
