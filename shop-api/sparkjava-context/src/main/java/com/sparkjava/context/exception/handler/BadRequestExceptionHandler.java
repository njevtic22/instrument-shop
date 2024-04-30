package com.sparkjava.context.exception.handler;

import com.sparkjava.context.exception.BadRequestException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;
import spark.ResponseTransformer;

import java.time.LocalDateTime;
import java.util.HashMap;

public class BadRequestExceptionHandler implements ExceptionHandler<BadRequestException> {
    private final String produces;
    private final ResponseTransformer renderer;

    private final InternalServerExceptionHandler defaultHandler = new InternalServerExceptionHandler();
    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public BadRequestExceptionHandler(String produces, ResponseTransformer renderer) {
        this.produces = produces;
        this.renderer = renderer;
    }

    @Override
    public void handle(BadRequestException exception, Request request, Response response) {
        logger.info(exception.getMessage(), exception);

        response.type(produces);
        response.status(400);

        HashMap<String, Object> errorBody = new HashMap<>();
        errorBody.put("timestamp", LocalDateTime.now());
        errorBody.put("message", exception.getMessage());

        try {
            String rendered = renderer.render(errorBody);
            response.body(rendered);
        } catch (Exception e) {
            defaultHandler.handle(e, request, response);
        }
    }
}
