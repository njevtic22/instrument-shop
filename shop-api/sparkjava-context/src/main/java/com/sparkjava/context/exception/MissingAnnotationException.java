package com.sparkjava.context.exception;

public class MissingAnnotationException extends RuntimeException {
    public MissingAnnotationException(String annotationName, String className) {
        super("Missing annotation: " + annotationName + " from class: " + className);
    }
}

