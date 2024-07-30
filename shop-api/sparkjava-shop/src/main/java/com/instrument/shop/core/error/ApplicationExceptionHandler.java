package com.instrument.shop.core.error;

import com.instrument.shop.core.error.exception.BlankStringException;
import com.instrument.shop.core.error.exception.BuyingException;
import com.instrument.shop.core.error.exception.CartException;
import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.InvalidUsernameException;
import com.instrument.shop.core.error.exception.PropertyLengthException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.sparkjava.context.annotation.ExceptionHandler;
import com.sparkjava.context.annotation.Exceptions;
import com.sparkjava.context.annotation.ResponseStatus;
import io.jsonwebtoken.JwtException;
import jakarta.inject.Singleton;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Singleton
@ExceptionHandler
public class ApplicationExceptionHandler {
    @ResponseStatus(400)
    @Exceptions(ConstraintViolationException.class)
    public ApiFieldError handleConstraintViolation(ConstraintViolationException ex) {
        ArrayList<FieldErrorMessage> details = new ArrayList<>();
        for (ConstraintViolation<?> violation : ex.getConstraintViolations()) {
            String fieldName = violation.getPropertyPath().toString();
            String messages = violation.getMessage() != null ? violation.getMessage() : "Message is: null";

            List<String> messagesList = Arrays.asList(messages.split("\\|"));
            details.add(new FieldErrorMessage(fieldName, messagesList));
        }

        return new ApiFieldError("Invalid field(s)", details);
    }

    @ResponseStatus(400)
    @Exceptions({
            IllegalArgumentException.class,
            UniquePropertyException.class,
            BlankStringException.class,
            InvalidUsernameException.class,
            PropertyLengthException.class,
            BuyingException.class,
            CartException.class,
            JwtException.class
    })
    public ApiError handleBadRequest(RuntimeException ex) {
        return new ApiError(ex.getMessage());
    }

    @ResponseStatus(404)
    @Exceptions(EntityNotFoundException.class)
    public ApiError handleNotFound(RuntimeException ex) {
        return new ApiError(ex.getMessage());
    }

    @ResponseStatus(500)
    @Exceptions(Exception.class)
    public ApiError handleInternalServer(Exception ex) {
        return new ApiError(ex.getMessage());
    }
}
