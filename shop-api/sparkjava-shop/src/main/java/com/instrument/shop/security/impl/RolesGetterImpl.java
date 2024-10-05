package com.instrument.shop.security.impl;

import com.instrument.shop.security.AuthenticationService;
import com.sparkjava.context.core.RolesGetter;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import spark.Request;

import java.util.Set;

@Singleton
public class RolesGetterImpl implements RolesGetter {
    private final AuthenticationService service;
    private final Set<String> allRoles = Set.of("MANAGER", "SALESMAN", "CUSTOMER");

    @Inject
    public RolesGetterImpl(AuthenticationService service) {
        this.service = service;
    }

    @Override
    public Set<String> getRoles(Request request) throws Exception {
        String jwt = request.headers("Authorization").substring(7);
        service.getUserFromToken(jwt);

        String role = service.getRoleFromToken(jwt);
        return Set.of(role);
    }

    @Override
    public Set<String> getAllRoles() throws Exception {
        return allRoles;
    }
}
