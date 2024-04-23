package com.sparkjava.context.exception;

public class ForbiddenException extends RuntimeException {
    public ForbiddenException() {
        super("Access Denied");
    }
}
