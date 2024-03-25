package com.instrument.shop.controller;

import com.google.gson.Gson;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.RequestHeader;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import spark.Request;

import java.util.TreeMap;

@Singleton
@RequestMapping("api/examples")
public class ExampleController {
    private final Gson gson;

    @Inject
    public ExampleController(Gson gson) {
        this.gson = gson;
    }

    @GetMapping
    @MethodOrder(100)
    public String getAll(Request request, @RequestHeader("User-Agent") String userAgent) {
        TreeMap<String, String> examples = new TreeMap<>();
        for (String header : request.headers()) {
            examples.put(header, request.headers(header));
        }

        examples.put("my user agent", userAgent);
        examples.put("non existing", request.headers("nonExisting"));

        return gson.toJson(examples);
    }
}
