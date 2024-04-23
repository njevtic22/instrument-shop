package com.sparkjava.context.core;

import com.sparkjava.context.exception.ForbiddenException;
import spark.Request;

import java.util.Set;

public class Authorizer {
    private final Set<String> allRoles;
    private final RolesGetter rolesGetter;

    public Authorizer(Set<String> allRoles, RolesGetter rolesGetter) {
        this.allRoles = allRoles;
        this.rolesGetter = rolesGetter;
    }

    public void validateAuthorization(Request request, Set<String> permittedRoles) throws Exception {
        if (permittedRoles.isEmpty()) {
            permittedRoles = allRoles;
        }

        Set<String> userRoles = rolesGetter.get(request);
        for (String userRole : userRoles) {
            if (permittedRoles.contains(userRole)) {
                return;
            }
        }

        throw new ForbiddenException();
    }
}
