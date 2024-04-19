package com.instrument.shop.core.error.exception;

public class InvalidUsernameException extends RuntimeException {
    public InvalidUsernameException(Throwable cause) {
        super("Invalid username.", cause);
    }
}
