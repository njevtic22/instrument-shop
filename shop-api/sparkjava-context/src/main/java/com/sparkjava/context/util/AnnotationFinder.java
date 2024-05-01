package com.sparkjava.context.util;

import com.sparkjava.context.annotation.ExceptionHandler;
import com.sparkjava.context.annotation.RequestMapping;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Optional;

public class AnnotationFinder {
    public <T extends Annotation> Optional<T> findOnClass(Class<?> clazz, Class<T> annotationType) {
        while (!isRoot(clazz)) {
            if (clazz.isAnnotationPresent(annotationType)) {
                return Optional.of(clazz.getAnnotation(annotationType));
            }

            clazz = clazz.getSuperclass();
        }

        // Root has been reached which means there is no more searching.
        // Annotation is either present or not on clazz
        return Optional.ofNullable(clazz.getAnnotation(annotationType));
    }

    public <T extends Annotation> Optional<T> findOnMethod(Method method, Class<T> annotationType) {
        Class<?> clazz = method.getDeclaringClass();

        while (!isRoot(clazz)) {
            if (method.isAnnotationPresent(annotationType)) {
                return Optional.of(method.getAnnotation(annotationType));
            }

            clazz = clazz.getSuperclass();
            try {
                method = clazz.getMethod(method.getName(), method.getParameterTypes());
            } catch (NoSuchMethodException e) {
                return Optional.empty();
            }
        }

        // Root has been reached which means there is no more searching.
        // Annotation is either present or not on method
        return Optional.ofNullable(method.getAnnotation(annotationType));
    }

    public <T extends Annotation> Optional<Method> findAnnotatedMethod(Method method, Class<T> annotationType) {
        Class<?> clazz = method.getDeclaringClass();

        while (!isRoot(clazz)) {
            if (method.isAnnotationPresent(annotationType)) {
                return Optional.of(method);
            }

            clazz = clazz.getSuperclass();
            try {
                method = clazz.getMethod(method.getName(), method.getParameterTypes());
            } catch (NoSuchMethodException e) {
                return Optional.empty();
            }
        }

        return method.isAnnotationPresent(annotationType) ? Optional.of(method) : Optional.empty();
    }

    private boolean isRoot(Class<?> clazz) {
        boolean hasRequestMapping = clazz.isAnnotationPresent(RequestMapping.class);
        boolean hasExceptionHandler = clazz.isAnnotationPresent(ExceptionHandler.class);

        return hasRequestMapping || hasExceptionHandler || clazz.equals(Object.class);
    }
}
