package com.sparkjava.context.core;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;
import spark.ResponseTransformer;
import spark.Route;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ContextRoute extends ArgumentsParser implements Route {
    private final int responseStatus;
    private final String responseType;
    private final Method mappedMethod;
    private final Object controller;
    private final ResponseTransformer renderer;

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public ContextRoute(
            int responseStatus,
            String responseType,
            Method mappedMethod,
            Object controller,
            RequestTransformer reqTransformer,
            ResponseTransformer renderer,
            Validator validator
    ) {
        super(reqTransformer, validator);

        if (responseStatus < 100 || responseStatus > 599) {
            throw new IllegalArgumentException("Response status must be between 100 and 599");
        }

        this.responseStatus = responseStatus;
        this.responseType = responseType;
        this.mappedMethod = mappedMethod;
        this.controller = controller;
        this.renderer = renderer;
    }

    @Override
    public Object handle(Request request, Response response) throws Exception {
        response.status(responseStatus);
        response.type(responseType);

        Object[] args = parseArgs(mappedMethod.getParameters(), request, response).toArray();
        try {
            Object body = mappedMethod.invoke(controller, args);

            if (body == null) {
                body = "";
            }
            if (body instanceof String) {
                return body;
            }

            return renderer.render(body);
        } catch (InvocationTargetException e) {
            logger.debug(e.getMessage(), e);
            throw (Exception) e.getCause();
        }
    }
}
