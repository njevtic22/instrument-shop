package com.sparkjava.context.exception.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.time.LocalDateTime;
import java.util.ArrayList;

public class ContextExceptionHandler implements ExceptionHandler<Exception> {
    private final int responseStatus;
    private final String responseType;
    private final Method methodHandler;
    private final Object objectHandler;

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public ContextExceptionHandler(int responseStatus, String responseType, Method methodHandler, Object objectHandler) {
        if (responseStatus < 100 || responseStatus > 599) {
            throw new IllegalArgumentException("Response status must be between 100 and 599");
        }

        this.responseStatus = responseStatus;
        this.responseType = responseType;
        this.methodHandler = methodHandler;
        this.objectHandler = objectHandler;
    }

    @Override
    public void handle(Exception exception, Request request, Response response) {
        response.status(responseStatus);
        response.type(responseType);

        try {
            Object[] args = parseArgs(methodHandler.getParameters(), exception, request, response);
            Object result = methodHandler.invoke(objectHandler, args);
            if (result != null) {
                // TODO: add serializer
                response.body((String) result);
            }
        } catch (IllegalAccessException | InvocationTargetException | IllegalArgumentException e) {
            logger.error("Unexpected error", e);
            response.status(500);
            String message = e.getMessage();
            String errorBody = "{\"timestamp\":\"" + LocalDateTime.now() +
                    "\",\"message\":\"" + message + "\"}";
            response.body(errorBody);
        }
    }

    private Object[] parseArgs(Parameter[] parameters, Throwable ex, Request request, Response response) {
        ArrayList<Object> params = new ArrayList<>(parameters.length);

        for (Parameter parameter : parameters) {
            Class<?> type = parameter.getType();
            if (type.isInstance(ex)) {
                params.add(ex);
            } else if (type.isInstance(request)) {
                params.add(request);
            } else if (type.isInstance(response)) {
                params.add(response);
            } else {
                throw new IllegalArgumentException("Unsupported argument type: " + type);
            }
        }

        return params.toArray();
    }
}
