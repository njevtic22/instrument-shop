package com.instrument.shop.core.error;

import com.google.gson.Gson;
import com.instrument.shop.core.error.exceptions.EntityNotFoundException;
import com.sparkjava.context.annotation.ExceptionHandler;
import com.sparkjava.context.annotation.Exceptions;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import spark.Request;
import spark.Response;

import java.time.LocalDateTime;
import java.util.Map;

@Singleton
@ExceptionHandler
public class ApplicationExceptionHandler {
    private final Gson gson;

    @Inject
    public ApplicationExceptionHandler(Gson gson) {
        this.gson = gson;
    }

    @Exceptions({EntityNotFoundException.class})
    public void handleBadRequest(RuntimeException ex, Request request, Response response) {
        Map<String, Object> body = Map.of(
                "timestamp", LocalDateTime.now().toString(),
                "message", ex.getMessage()
        );
        response.body(gson.toJson(body));
    }
}
