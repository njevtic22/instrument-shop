package com.sparkjava.context;

import spark.Filter;
import spark.Request;
import spark.Response;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

public class ContextFilter implements Filter {
    private final Method mappedMethod;
    private final Object controller;

    public ContextFilter(Method mappedMethod, Object controller) {
        this.mappedMethod = mappedMethod;
        this.controller = controller;
    }

    @Override
    public void handle(Request request, Response response) throws Exception {
        Object[] args = parseArgs(mappedMethod.getParameters(), request, response);
        mappedMethod.invoke(controller, args);
    }

    private Object[] parseArgs(Parameter[] parameters, Request request, Response response) {
        return new Object[]{request, response};
    }
}
