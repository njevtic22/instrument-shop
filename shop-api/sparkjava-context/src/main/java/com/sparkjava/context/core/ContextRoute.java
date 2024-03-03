package com.sparkjava.context.core;

import spark.Request;
import spark.Response;
import spark.Route;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;

public class ContextRoute implements Route {
    private final int responseStatus;
    private final String responseType;
    private final Method mappedMethod;
    private final Object controller;

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

        Object[] args = parseArgs(mappedMethod.getParameters(), request, response);
        return mappedMethod.invoke(controller, args);
    }

    private Object[] parseArgs(Parameter[] parameters, Request request, Response response) {
        ArrayList<Object> params = new ArrayList<>(parameters.length);

        for (Parameter parameter : parameters) {
            Class<?> type = parameter.getType();
            if (type.isInstance(request)) {
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
