package com.sparkjava.context.exception.handler;

import com.sparkjava.context.exception.ForbiddenException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.ExceptionHandler;
import spark.Request;
import spark.Response;

import java.time.LocalDateTime;

public class ForbiddenExceptionHandler implements ExceptionHandler<ForbiddenException> {
    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    @Override
    public void handle(ForbiddenException exception, Request request, Response response) {
        logger.error(exception.getMessage(), exception);

        response.type("application/json;charset=UTF-8");

        response.status(403);
        String errorBody = "{\"timestamp\":\"" + LocalDateTime.now() +
                "\",\"message\":\"" + exception.getMessage() + "\"}";
        response.body(errorBody);
    }
}
