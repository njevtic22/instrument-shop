package com.sparkjava.context.core;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;
import spark.Route;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ContextRoute extends ArgumentsParser implements Route {
    private final int responseStatus;
    private final String responseType;
    private final Method mappedMethod;
    private final Object controller;

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public ContextRoute(int responseStatus, String responseType, Method mappedMethod, Object controller) {
        if (responseStatus < 100 || responseStatus > 599) {
            throw new IllegalArgumentException("Response status must be between 100 and 599");
        }

        this.responseStatus = responseStatus;
        this.responseType = responseType;
        this.mappedMethod = mappedMethod;
        this.controller = controller;
    }

    @Override
    public Object handle(Request request, Response response) throws Exception {
        response.status(responseStatus);
        response.type(responseType);

        Object[] args = parseArgs(mappedMethod.getParameters(), request, response).toArray();
        try {
            // TODO: add serializer if return type is not String
            return mappedMethod.invoke(controller, args);
        } catch (InvocationTargetException e) {
            logger.debug(e.getMessage(), e);
            throw (Exception) e.getCause();
        }
    }
}
