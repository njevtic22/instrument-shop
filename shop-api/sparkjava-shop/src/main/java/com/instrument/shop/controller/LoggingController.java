package com.instrument.shop.controller;

import com.sparkjava.context.annotation.AfterAfterMapping;
import com.sparkjava.context.annotation.AfterMapping;
import com.sparkjava.context.annotation.BeforeMapping;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Singleton;
import org.eclipse.jetty.http.HttpStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;

@Singleton
@RequestMapping("api")
public class LoggingController {
    private final Logger logger = LoggerFactory.getLogger(LoggingController.class.getName());

    @BeforeMapping("/*")
    public void logApiRequest(Request request) {
        logger.info("request: " + request.requestMethod() + " " + request.uri() + " " + request.protocol());
    }

    @AfterMapping("/*")
    public void logExample(Response response, Request request) {
        logger.info("example: " + request.protocol() + " " + response.status() + " " + HttpStatus.getMessage(response.status()));
    }

    @AfterAfterMapping("/*")
    public void logApiResponse(Response response, Request request) {
        logger.info("response: " + request.protocol() + " " + response.status() + " " + HttpStatus.getMessage(response.status()));
    }
}
