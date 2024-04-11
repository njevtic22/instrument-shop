package com.sparkjava.context.exception;

public class BadRequestException extends RuntimeException {
    public BadRequestException(Throwable cause) {
        super(cause.getMessage(), cause);
    }
}
