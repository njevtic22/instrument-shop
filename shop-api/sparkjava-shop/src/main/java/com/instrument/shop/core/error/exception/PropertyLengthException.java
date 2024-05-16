package com.instrument.shop.core.error.exception;

public class PropertyLengthException extends RuntimeException {
    public PropertyLengthException(String propertyName) {
        super(propertyName + " is too long.");
    }

    public PropertyLengthException(String propertyName, int maxCharacters) {
        super(propertyName + " exceeds maximum number of " + maxCharacters + " characters.");
    }
}
