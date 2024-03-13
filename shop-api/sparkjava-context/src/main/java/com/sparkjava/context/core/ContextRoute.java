package com.sparkjava.context.core;

import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.exception.InternalServerException;
import com.sparkjava.context.util.StringParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;
import spark.Route;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;

public class ContextRoute implements Route {
    private final int responseStatus;
    private final String responseType;
    private final Method mappedMethod;
    private final Object controller;
    private final StringParser parser = new StringParser();

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

        try {
            Object[] args = parseArgs(mappedMethod.getParameters(), request, response);
            // TODO: add serializer
            return mappedMethod.invoke(controller, args);
        } catch (InvocationTargetException e) {
            logger.debug(e.getMessage(), e);
            throw (Exception) e.getCause();
        }
    }

    private Object[] parseArgs(Parameter[] parameters, Request request, Response response) {
        ArrayList<Object> params = new ArrayList<>(parameters.length);

        for (Parameter parameter : parameters) {
            Class<?> type = parameter.getType();

            if (type.isInstance(request)) {
                params.add(request);
            } else if (type.isInstance(response)) {
                params.add(response);

            } else if (parameter.isAnnotationPresent(PathParam.class)) {
                PathParam pp = parameter.getAnnotation(PathParam.class);
                String paramValue = pp.value().startsWith(":") ? request.params(pp.value()) : request.params(":" + pp.value());
                if (paramValue == null && pp.required()) {
                    throw new InternalServerException(new NullPointerException("Required path param '" + pp.value() + "' is not present"));
                }

                params.add(parser.parse(paramValue, parameter.getType()));
            } else {
                throw new InternalServerException(new IllegalArgumentException("Unsupported argument type: " + type));
            }
        }

        return params.toArray();
    }
}
