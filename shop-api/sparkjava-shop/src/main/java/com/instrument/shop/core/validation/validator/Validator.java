package com.instrument.shop.core.validation.validator;

import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;

import java.util.Set;

@Singleton
public class Validator {
    private final jakarta.validation.Validator validator;

    @Inject
    public Validator(jakarta.validation.Validator validator) {
        this.validator = validator;
    }

    public <T> void validate(T toValidate) {
        Set<ConstraintViolation<T>> violations = validator.validate(toValidate);
        if (!violations.isEmpty()) {
            throw new ConstraintViolationException(violations);
        }
    }
}
