package com.instrument.shop.security.impl;

import com.instrument.shop.security.AuthenticationService;
import com.sparkjava.context.core.Authenticator;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import spark.Request;

@Singleton
public class AuthenticatorImpl implements Authenticator {
    private final AuthenticationService service;

    @Inject
    public AuthenticatorImpl(AuthenticationService service) {
        this.service = service;
    }

    @Override
    public Object authenticate(Request request) throws Exception {
        String jwt = request.headers("Authorization").substring(7);
        return service.getUserFromToken(jwt);
    }
}
