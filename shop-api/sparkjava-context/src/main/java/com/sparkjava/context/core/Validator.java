package com.sparkjava.context.core;

@FunctionalInterface
public interface Validator {
    void validate(Object toValidate);
}
