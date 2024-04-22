package com.sparkjava.context.core;

import spark.Request;

@FunctionalInterface
public interface Authenticator {
    Object authenticate(Request request) throws Exception;
}
