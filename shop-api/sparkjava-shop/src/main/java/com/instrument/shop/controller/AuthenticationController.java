package com.instrument.shop.controller;

import com.instrument.shop.dto.auth.LoginRequestDto;
import com.instrument.shop.dto.auth.TokenResponse;
import com.instrument.shop.security.AuthenticationService;
import com.instrument.shop.util.Pair;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.validation.Valid;

@RequestMapping("api")
public class AuthenticationController {
    private final AuthenticationService service;

    @Inject
    public AuthenticationController(AuthenticationService service) {
        this.service = service;
    }

    @PostMapping("/auth/login")
    public TokenResponse login(@Valid @RequestBody LoginRequestDto loginBody) {
        Pair<String, String> loginData = service.login(loginBody.getUsername(), loginBody.getPassword());
        return new TokenResponse(loginData.first(), loginData.second());
    }
}
