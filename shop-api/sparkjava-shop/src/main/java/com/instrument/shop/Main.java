package com.instrument.shop;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.instrument.shop.controller.UserController;
import com.instrument.shop.guiceConfig.module.FileSerializerModule;
import com.instrument.shop.guiceConfig.module.GsonModule;
import com.instrument.shop.guiceConfig.module.PasswordModule;
import com.instrument.shop.guiceConfig.module.PropertiesModule;
import com.instrument.shop.guiceConfig.module.RepositoryModule;
import com.instrument.shop.guiceConfig.module.ValidatorModule;
import com.sparkjava.context.SparkJavaContext;

import java.util.Properties;

public class Main {
    public static void main(String[] args) {
        Injector injector = Guice.createInjector(
                new GsonModule(),
                new PropertiesModule(),
                new FileSerializerModule(),
                new RepositoryModule(),
                new PasswordModule(),
                new ValidatorModule()
        );

        Properties properties = injector.getInstance(Properties.class);
        int port = Integer.parseInt(properties.getProperty("server.port"));

        SparkJavaContext.init(
                port,
                injector.getInstance(UserController.class)
        );
    }
}