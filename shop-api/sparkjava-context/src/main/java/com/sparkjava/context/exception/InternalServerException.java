package com.sparkjava.context.exception;

public class InternalServerException extends RuntimeException {
    public InternalServerException(Throwable cause) {
        super(cause.getMessage(), cause);
    }
}
