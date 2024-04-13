package com.sparkjava.context.exception.handler;

import com.sparkjava.context.core.ArgumentsParser;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;

import java.lang.reflect.Method;

public class ContextExceptionHandler extends ArgumentsParser implements ExceptionHandler<Exception> {
    private final int responseStatus;
    private final String responseType;
    private final Method methodHandler;
    private final Object objectHandler;

    private final ExceptionHandler<Exception> defaultHandler = new InternalServerExceptionHandler();

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
            Object[] args = parseArgs(methodHandler.getParameters(), exception, request, response).toArray();
            Object body = methodHandler.invoke(objectHandler, args);

            if (body == null) {
                body = "";
            }
            if (body instanceof String) {
                response.body((String) body);
                return;
            }

            // TODO: add serializer
            response.body(body.toString());
        } catch (Exception e) {
            defaultHandler.handle(e, request, response);
        }
    }
}
