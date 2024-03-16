package com.sparkjava.context.core;

import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.RequestBody;
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
import java.util.Arrays;

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

            } else if (parameter.isAnnotationPresent(QueryParam.class)) {
                QueryParam qp = parameter.getAnnotation(QueryParam.class);
                if (type.isArray()) {
                    // Parameter is array
                    String[] queryValues = request.queryParamsValues(qp.value());
                    if (queryValues == null) {
                        queryValues = qp.defaultValue().split(",");
                    }

                    if (queryValues.length == 1 && queryValues[0].isEmpty() && qp.required()) {
                        throw new InternalServerException(new IllegalArgumentException("Required query param '" + qp.value() + "' is not present"));
                    }

                    Object[] parsedQueries = getArray(type, queryValues.length);
                    for (int i = 0; i < queryValues.length; i++) {
                        parsedQueries[i] = parser.parse(queryValues[i].strip(), type.componentType());
                    }

                    Object finalQueries = parsedQueries;
                    if (type.equals(int[].class)) {
                        finalQueries = Arrays.stream(parsedQueries).mapToInt(i -> (Integer) i).toArray();
                    } else if (type.equals(long[].class)) {
                        finalQueries = Arrays.stream(parsedQueries).mapToLong(l -> (Long) l).toArray();
                    }
                    params.add(finalQueries);


                } else {
                    // Parameter is not array
                    String queryValue = request.queryParams(qp.value());
                    if (queryValue == null) {
                        queryValue = qp.defaultValue();
                    }

                    if (queryValue.isEmpty() && qp.required()) {
                        throw new InternalServerException(new IllegalArgumentException("Required query param '" + qp.value() + "' is not present"));
                    }

                    params.add(parser.parse(queryValue, parameter.getType()));
                }

            } else if (parameter.isAnnotationPresent(RequestBody.class)) {
                RequestBody rb = parameter.getAnnotation(RequestBody.class);
                String body = request.body();
                if (body.isBlank() && rb.required()) {
                    throw new InternalServerException(new IllegalArgumentException("Required request body is not present"));
                }

                params.add(body);
            } else {
                throw new InternalServerException(new IllegalArgumentException("Unsupported argument type: " + type));
            }
        }

        return params.toArray();
    }

    private Object[] getArray(Class<?> type, int length) {
        if (type.equals(int[].class) || type.equals(Integer[].class)) {
            return new Integer[length];
        } else if (type.equals(long[].class) || type.equals(Long[].class)) {
            return new Long[length];
        } else if (type.equals(String[].class)) {
            return new String[length];
        } else {
            throw new InternalServerException(new IllegalArgumentException("Unsupported argument type: " + type));
        }
    }
}
