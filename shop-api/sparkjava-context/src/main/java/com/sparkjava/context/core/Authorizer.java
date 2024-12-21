package com.sparkjava.context.core;

import com.sparkjava.context.exception.ForbiddenException;
import spark.Request;

import java.util.Set;

public class Authorizer {
    private final RolesGetter rolesGetter;

    public Authorizer(RolesGetter rolesGetter) {
        this.rolesGetter = rolesGetter;
    }

    public void validateAuthorization(Request request, Set<String> permittedRoles) throws Exception {
        if (permittedRoles.isEmpty()) {
            permittedRoles = rolesGetter.getAllRoles();
        }

        Set<String> userRoles = rolesGetter.getRoles(request);
        for (String userRole : userRoles) {
            if (permittedRoles.contains(userRole)) {
                return;
            }
        }

        throw new ForbiddenException();
    }
}
