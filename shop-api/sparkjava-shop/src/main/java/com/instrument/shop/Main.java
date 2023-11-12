package com.instrument.shop;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.instrument.shop.controller.UserController;
import com.instrument.shop.guiceConfig.module.GsonModule;
import com.instrument.shop.guiceConfig.module.PasswordModule;
import com.instrument.shop.guiceConfig.module.RepositoryModule;
import com.sparkjava.context.SparkJavaContext;

public class Main {
    public static void main(String[] args) {
        Injector injector = Guice.createInjector(
                new GsonModule(),
                new RepositoryModule(),
                new PasswordModule()
        );

        SparkJavaContext.init(
                8080,
                injector.getInstance(UserController.class)
        );
    }
}