package com.instrument.shop.controller;

import com.sparkjava.context.annotation.BeforeMapping;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Singleton;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;

@Singleton
@RequestMapping("api")
public class LoggingController {
    private final Logger logger = LoggerFactory.getLogger(LoggingController.class.getName());

    @BeforeMapping("/*")
    public void logBeforeApiCall(Request request, Response response) {
        logger.info(request.requestMethod() + " " + request.uri() + " " + request.protocol());
    }
}
