package com.sparkjava.context.core;

import spark.Request;

import java.util.Set;

@FunctionalInterface
public interface RolesGetter {
    Set<String> get(Request request) throws Exception;
}
