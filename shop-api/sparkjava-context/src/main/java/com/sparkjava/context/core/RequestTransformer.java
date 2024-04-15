package com.sparkjava.context.core;

@FunctionalInterface
public interface RequestTransformer {
    Object parse(String body, Class<?> modelClass) throws Exception;
}
