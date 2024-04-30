package com.sparkjava.context.exception.handler;

import com.sparkjava.context.annotation.ResponseBody;
import com.sparkjava.context.core.ArgumentsParser;
import com.sparkjava.context.core.Authenticator;
import com.sparkjava.context.core.RequestTransformer;
import com.sparkjava.context.core.Validator;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;
import spark.ResponseTransformer;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ContextExceptionHandler extends ArgumentsParser implements ExceptionHandler<Exception> {
    private final int responseStatus;
    private final String responseType;
    private final Method methodHandler;
    private final Object objectHandler;
    private final ResponseTransformer renderer;
    private final ExceptionHandler<Exception> defaultHandler;

    public ContextExceptionHandler(
            int responseStatus,
            String responseType,
            Method methodHandler,
            Object objectHandler,
            RequestTransformer bodyTransformer,
            ResponseTransformer renderer,
            Validator validator,
            Authenticator authenticator
    ) {
        super(bodyTransformer, validator, authenticator);

        if (responseStatus < 100 || responseStatus > 599) {
            throw new IllegalArgumentException("Response status must be between 100 and 599");
        }

        this.responseStatus = responseStatus;
        this.responseType = responseType;
        this.methodHandler = methodHandler;
        this.objectHandler = objectHandler;
        this.renderer = renderer;
        this.defaultHandler = new InternalServerExceptionHandler(responseType, renderer);
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

            ResponseTransformer renderer = getRenderer(methodHandler);
            response.body(renderer.render(body));
        } catch (Exception e) {
            defaultHandler.handle(e, request, response);
        }
    }

    private ResponseTransformer getRenderer(Method methodHandler) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        if (methodHandler.isAnnotationPresent(ResponseBody.class)) {
            ResponseBody rb = methodHandler.getAnnotation(ResponseBody.class);
            return rb.renderer().getConstructor().newInstance();
        }
        return renderer;
    }
}
