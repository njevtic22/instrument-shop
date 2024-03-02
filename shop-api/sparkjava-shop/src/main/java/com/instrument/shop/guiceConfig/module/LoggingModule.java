package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.matcher.Matcher;
import com.google.inject.matcher.Matchers;
import com.instrument.shop.core.error.ApplicationExceptionHandler;
import com.instrument.shop.logging.AspectLogger;
import spark.Request;
import spark.Response;

import java.lang.reflect.Method;

public class LoggingModule extends AbstractModule {
    @Override
    protected void configure() {
        try {
            AspectLogger logger = new AspectLogger();

            Class<ApplicationExceptionHandler> exceptionHandlerClass = ApplicationExceptionHandler.class;
            Method handleInternalServerMethod = exceptionHandlerClass.getDeclaredMethod("handleInternalServer", Exception.class);

            Matcher<Object> exceptionMatcher = Matchers.only(handleInternalServerMethod);
            bindInterceptor(
                    Matchers.only(exceptionHandlerClass),
                    exceptionMatcher,
                    logger::logInternalServerException
            );
            bindInterceptor(
                    Matchers.only(exceptionHandlerClass),
                    Matchers.not(exceptionMatcher),
                    logger::logRuntimeException
            );
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }
}
