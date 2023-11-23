package com.instrument.shop;

import com.google.gson.Gson;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.instrument.shop.controller.UserController;
import com.instrument.shop.dbContext.JsonDbContext;
import com.instrument.shop.guiceConfig.module.FileSerializerModule;
import com.instrument.shop.guiceConfig.module.GsonModule;
import com.instrument.shop.guiceConfig.module.PasswordModule;
import com.instrument.shop.guiceConfig.module.PropertiesModule;
import com.instrument.shop.guiceConfig.module.RepositoryModule;
import com.instrument.shop.guiceConfig.module.SorterModule;
import com.instrument.shop.guiceConfig.module.ValidatorModule;
import com.instrument.shop.repository.UserRepository;
import com.sparkjava.context.SparkJavaContext;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;

public class Main {
    public static void main(String[] args) throws IOException, NoSuchFieldException, IllegalAccessException {
        Injector injector = Guice.createInjector(
                new GsonModule(),
                new PasswordModule(),
                new ValidatorModule(),
                new SorterModule(),
                new RepositoryModule(),
                new FileSerializerModule(),
                new PropertiesModule()
        );

        Properties properties = injector.getInstance(Properties.class);

        JsonDbContext dbContext = new JsonDbContext(
                injector.getInstance(Gson.class),
                Map.of(
                        "userPath", properties.getProperty("database.json.user-file-path")
                ),
                injector.getInstance(UserRepository.class)
        );
        dbContext.loadData();

        SparkJavaContext.init(
                Integer.parseInt(properties.getProperty("server.port")),
                injector.getInstance(UserController.class)
        );
    }
}