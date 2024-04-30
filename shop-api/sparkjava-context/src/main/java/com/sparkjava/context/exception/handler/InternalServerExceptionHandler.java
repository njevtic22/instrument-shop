package com.sparkjava.context.exception.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;
import spark.ResponseTransformer;

import java.time.LocalDateTime;
import java.util.HashMap;

public class InternalServerExceptionHandler implements ExceptionHandler<Exception> {
    private final String produces;
    private final ResponseTransformer renderer;

    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public InternalServerExceptionHandler(String produces, ResponseTransformer renderer) {
        this.produces = produces;
        this.renderer = renderer;
    }

    @Override
    public void handle(Exception exception, Request request, Response response) {
        logger.error("Unexpected error", exception);

        response.type(produces);
        response.status(500);

        HashMap<String, Object> errorBody = new HashMap<>();
        errorBody.put("timestamp", LocalDateTime.now());
        errorBody.put("message", exception.getMessage());

        try {
            response.body(renderer.render(errorBody));
        } catch (Exception e) {
            logger.error("Exception happened inside InternalServerExceptionHandler", e);

            response.type("application/json;charset=UTF-8");
            String jsonErrorBody = "{\"timestamp\":\"" + LocalDateTime.now() +
                    "\",\"message\":\"" + e.getMessage() + "\"}";
            response.body(jsonErrorBody);
        }
    }
}
