package com.sparkjava.context.exception.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;

import java.time.LocalDateTime;

public class InternalServerExceptionHandler implements ExceptionHandler<Exception> {
    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    @Override
    public void handle(Exception exception, Request request, Response response) {
        logger.error("Unexpected error", exception);

        response.type("application/json;charset=UTF-8");

        response.status(500);
        String errorBody = "{\"timestamp\":\"" + LocalDateTime.now() +
                "\",\"message\":\"" + exception.getMessage() + "\"}";
        response.body(errorBody);
    }
}
