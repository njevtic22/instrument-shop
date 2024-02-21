package com.instrument.shop.core.error.exception;

public class EntityNotFoundException extends RuntimeException {
    public EntityNotFoundException(String entityName, Long id) {
        super(entityName + " with id: '" + id + "' not found.");
    }

    public EntityNotFoundException(String entityName, String property, String propertyValue) {
        super(entityName + " with property and value '" + property + "=" + propertyValue + "' does not exist.");
    }
}
