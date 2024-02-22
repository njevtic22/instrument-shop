package com.sparkjava.context.exception.handler;

import com.sparkjava.context.annotation.ResponseStatus;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.time.LocalDateTime;
import java.util.Map;

public class InvocationTargetExceptionHandler implements ExceptionHandler<InvocationTargetException> {
    private final Object exceptionHandler;
    private final Map<Class<? extends Exception>, Method> handlers;

    public InvocationTargetExceptionHandler(Object exceptionHandler, Map<Class<? extends Exception>, Method> handlers) {
        this.exceptionHandler = exceptionHandler;
        this.handlers = handlers;
    }

    @Override
    public void handle(InvocationTargetException exception, Request request, Response response) {
        try {
            Throwable cause = exception.getCause();
            Method methodHandler = handlers.get(cause.getClass());
            if (methodHandler == null) {
                methodHandler = handlers.get(Exception.class);
            }

            if (methodHandler.isAnnotationPresent(ResponseStatus.class)) {
                ResponseStatus responseStatus = methodHandler.getAnnotation(ResponseStatus.class);
                response.status(responseStatus.value());
            }

            Object[] args = parseArgs(methodHandler.getParameters(), cause, request, response);
            Object result = methodHandler.invoke(exceptionHandler, args);
            if (result != null) {
                // TODO: add serializer
                response.body((String) result);
            }
        } catch (IllegalAccessException | InvocationTargetException | NullPointerException e) {
            response.status(500);
            String errorBody = "{\"timestamp\":\"" + LocalDateTime.now() +
                    "\",\"message\":\"" + e.getMessage().replaceAll("\"", "'") + "\"}";
            response.body(errorBody);
        }
    }

    private Object[] parseArgs(Parameter[] parameters, Throwable ex, Request request, Response response) {
        return new Object[]{ex, request, response};
    }
}
