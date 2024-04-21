package com.sparkjava.context.core;

import spark.Filter;
import spark.Request;
import spark.Response;

import java.lang.reflect.Method;

public class ContextFilter extends ArgumentsParser implements Filter {
    private final Method mappedMethod;
    private final Object controller;

    public ContextFilter(Method mappedMethod, Object controller, RequestTransformer bodyTransformer, Validator validator, Authenticator authenticator) {
        super(bodyTransformer, validator, authenticator);

        this.mappedMethod = mappedMethod;
        this.controller = controller;
    }

    @Override
    public void handle(Request request, Response response) throws Exception {
        Object[] args = parseArgs(mappedMethod.getParameters(), request, response).toArray();
        mappedMethod.invoke(controller, args);
    }
}
