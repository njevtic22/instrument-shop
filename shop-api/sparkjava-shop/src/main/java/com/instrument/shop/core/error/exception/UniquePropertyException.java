package com.instrument.shop.core.error.exception;

public class UniquePropertyException extends RuntimeException {
    public UniquePropertyException(String propertyName, String propertyValue) {
        super(propertyName + " '" + propertyValue + "' is already taken");
    }

    public UniquePropertyException(String entityName, String propertyName, String propertyValue) {
        super(entityName + " with " + propertyName + "='" + propertyValue + "' already exist");
    }
}
