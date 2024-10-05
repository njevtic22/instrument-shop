package com.sparkjava.context.core;

import spark.Request;

import java.util.Set;

public interface RolesGetter {
    Set<String> getRoles(Request request) throws Exception;

    Set<String> getAllRoles() throws Exception;
}
