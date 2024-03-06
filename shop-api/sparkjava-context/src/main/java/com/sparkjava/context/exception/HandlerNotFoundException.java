package com.sparkjava.context.exception;

public class HandlerNotFoundException extends RuntimeException {
    public HandlerNotFoundException(Class<? extends Throwable> exception) {
        super("No handler found for " + exception.getName());
    }
}
