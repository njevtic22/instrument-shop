package com.instrument.shop;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.instrument.shop.controller.UserController;
import com.instrument.shop.guiceConfig.module.GsonModule;

public class Main {
    public static void main(String[] args) {
        Injector injector = Guice.createInjector(
                new GsonModule()
        );
        injector.getInstance(UserController.class);
    }
}