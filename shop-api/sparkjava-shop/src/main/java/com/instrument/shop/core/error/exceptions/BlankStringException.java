package com.instrument.shop.core.error.exceptions;

public class BlankStringException extends IllegalArgumentException {
    public BlankStringException() {
        super("Passed string must not be blank");
    }

    public BlankStringException(String message) {
        super(message);
    }
}
