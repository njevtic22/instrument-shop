package com.sparkjava.context.exception.handler;

import com.sparkjava.context.annotation.ResponseStatus;
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
import java.util.Map;

public class InvocationTargetExceptionHandler implements ExceptionHandler<InvocationTargetException> {
    private final Object exceptionHandler;
    private final Map<Class<? extends Exception>, Method> handlers;
    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

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
        } catch (Exception e) {
            logger.error("Unexpected error", e);
            response.status(500);
            String message = e.getMessage() != null ? e.getMessage() : "null";
            String errorBody = "{\"timestamp\":\"" + LocalDateTime.now() +
                    "\",\"message\":\"" + message.replaceAll("\"", "'") + "\"}";
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
