package com.sparkjava.context.core;

import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.ResponseBody;
import com.sparkjava.context.exception.InternalServerException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;
import spark.ResponseTransformer;
import spark.Route;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;

public class ContextRoute extends ArgumentsParser implements Route {
    private final int responseStatus;
    private final String responseType;
    private final Method mappedMethod;
    private final Object controller;
    private final ResponseTransformer renderer;
    private final Authorizer authorizer;

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public ContextRoute(
            int responseStatus,
            String responseType,
            Method mappedMethod,
            Object controller,
            RequestTransformer reqTransformer,
            ResponseTransformer renderer,
            Validator validator,
            Authenticator authenticator,
            Authorizer authorizer
    ) {
        super(reqTransformer, validator, authenticator);

        if (responseStatus < 100 || responseStatus > 599) {
            throw new IllegalArgumentException("Response status must be between 100 and 599");
        }

        this.responseStatus = responseStatus;
        this.responseType = responseType;
        this.mappedMethod = mappedMethod;
        this.controller = controller;
        this.renderer = renderer;
        this.authorizer = authorizer;
    }

    @Override
    public Object handle(Request request, Response response) throws Exception {
        validateAuthorization(request, mappedMethod);

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

            ResponseTransformer renderer = getRenderer(mappedMethod);
            return renderer.render(body);
        } catch (InvocationTargetException e) {
            logger.debug(e.getMessage(), e);
            throw (Exception) e.getCause();
        }
    }

    private ResponseTransformer getRenderer(Method mappedMethod) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        if (mappedMethod.isAnnotationPresent(ResponseBody.class)) {
            ResponseBody rb = mappedMethod.getAnnotation(ResponseBody.class);
            return rb.renderer().getConstructor().newInstance();
        }
        return renderer;
    }

    private void validateAuthorization(Request request, Method mappedMethod) throws Exception {
        if (mappedMethod.isAnnotationPresent(PreAuthorize.class)) {
            PreAuthorize pa = mappedMethod.getAnnotation(PreAuthorize.class);

            if (authorizer == null) {
                throw new InternalServerException(new NullPointerException("Authorizer is not set"));
            }
            authorizer.validateAuthorization(request, Set.of(pa.value()));
        }
    }
}
