package com.instrument.shop;

import com.sparkjava.context.SparkJavaContext;

import static spark.Spark.get;

public class Main {
    public static void main(String[] args) {
        SparkJavaContext.init();
        get("/hello", (request, response) -> "Hello World!");
    }
}