package com.instrument.shop.core.error;

import com.google.gson.Gson;
import com.instrument.shop.core.error.exception.BlankStringException;
import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.sparkjava.context.annotation.ExceptionHandler;
import com.sparkjava.context.annotation.Exceptions;
import com.sparkjava.context.annotation.ResponseStatus;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
import spark.Request;
import spark.Response;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Singleton
@ExceptionHandler
public class ApplicationExceptionHandler {
    private final Gson gson;

    @Inject
    public ApplicationExceptionHandler(Gson gson) {
        this.gson = gson;
    }

    @ResponseStatus(400)
    @Exceptions({ConstraintViolationException.class})
    public String handleConstraintViolation(ConstraintViolationException ex, Request request, Response response) {
        ArrayList<FieldErrorMessage> details = new ArrayList<>();
        for (ConstraintViolation<?> violation : ex.getConstraintViolations()) {
            String fieldName = violation.getPropertyPath().toString();
            String messages = violation.getMessage() != null ? violation.getMessage() : "Message is: null";

            List<String> messagesList = Arrays.asList(messages.split("\\|"));
            details.add(new FieldErrorMessage(fieldName, messagesList));
        }

        ApiFieldError errorBody = new ApiFieldError("Invalid field(s)", details);
        return gson.toJson(errorBody);
    }

    @ResponseStatus(400)
    @Exceptions({
            IllegalArgumentException.class,
            UniquePropertyException.class,
            BlankStringException.class
    })
    public String handleBadRequest(RuntimeException ex, Request request, Response response) {
        ApiError errorBody = new ApiError(ex.getMessage());
        return gson.toJson(errorBody);
    }

    @ResponseStatus(404)
    @Exceptions({EntityNotFoundException.class})
    public String handleNotFound(RuntimeException ex, Request request, Response response) {
        ApiError errorBody = new ApiError(ex.getMessage());
        return gson.toJson(errorBody);
    }

    @ResponseStatus(500)
    @Exceptions({Exception.class})
    public String handleInternalServer(Exception ex, Request request, Response response) {
        ApiError errorBody = new ApiError(ex.getMessage());
        return gson.toJson(errorBody);
    }
}
