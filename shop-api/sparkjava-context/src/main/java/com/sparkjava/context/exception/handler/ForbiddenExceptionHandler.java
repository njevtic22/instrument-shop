package com.sparkjava.context.exception.handler;

import com.sparkjava.context.exception.ForbiddenException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;
import spark.ResponseTransformer;

import java.time.LocalDateTime;
import java.util.HashMap;

public class ForbiddenExceptionHandler implements ExceptionHandler<ForbiddenException> {
    private final String produces;
    private final ResponseTransformer renderer;
    private final InternalServerExceptionHandler defaultHandler;

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public ForbiddenExceptionHandler(String produces, ResponseTransformer renderer) {
        this.produces = produces;
        this.renderer = renderer;
        this.defaultHandler = new InternalServerExceptionHandler(produces, renderer);
    }

    @Override
    public void handle(ForbiddenException exception, Request request, Response response) {
        logger.error(exception.getMessage(), exception);

        response.type(produces);
        response.status(403);

        HashMap<String, Object> errorBody = new HashMap<>();
        errorBody.put("timestamp", LocalDateTime.now());
        errorBody.put("message", exception.getMessage());

        try {
            response.body(renderer.render(errorBody));
        } catch (Exception e) {
            defaultHandler.handle(e, request, response);
        }
    }
}
