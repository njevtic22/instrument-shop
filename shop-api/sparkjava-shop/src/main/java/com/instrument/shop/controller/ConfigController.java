package com.instrument.shop.controller;

import com.sparkjava.context.annotation.BeforeMapping;
import com.sparkjava.context.annotation.OptionsMapping;
import com.sparkjava.context.annotation.RequestHeader;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Singleton;
import spark.Response;

@Singleton
@RequestMapping("api")
public class ConfigController {
    @BeforeMapping("/*")
    public void configureCors(Response response) {
        response.header("Access-Control-Allow-Origin", "http://localhost:3000");
        response.header("Access-Control-Request-Method", "GET,POST,PUT,DELETE,OPTIONS");
//        response.header("Access-Control-Allow-Headers", headers);
//        response.type("application/json");
    }

    @OptionsMapping("/*")
    public void setHeaders(
            Response response,
            @RequestHeader(value = "Access-Control-Request-Headers", required = false) String headers,
            @RequestHeader(value = "Access-Control-Request-Method", required = false) String methods
    ) {
        if (!headers.isEmpty()) {
            response.header("Access-Control-Allow-Headers", headers);
        }

        if (!methods.isEmpty()) {
            response.header("Access-Control-Allow-Methods", methods);
        }
    }
}
