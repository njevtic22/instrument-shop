package com.instrument.shop;

import com.google.gson.Gson;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.instrument.shop.controller.AuthenticationController;
import com.instrument.shop.controller.ImageController;
import com.instrument.shop.controller.LoggingController;
import com.instrument.shop.controller.UserController;
import com.instrument.shop.core.error.ApplicationExceptionHandler;
import com.instrument.shop.core.validation.validator.Validator;
import com.instrument.shop.dbContext.JsonDbContext;
import com.instrument.shop.guiceConfig.module.FileSerializerModule;
import com.instrument.shop.guiceConfig.module.FilterModule;
import com.instrument.shop.guiceConfig.module.GsonModule;
import com.instrument.shop.guiceConfig.module.LoggingModule;
import com.instrument.shop.guiceConfig.module.PropertiesModule;
import com.instrument.shop.guiceConfig.module.RepositoryModule;
import com.instrument.shop.guiceConfig.module.SecurityModule;
import com.instrument.shop.guiceConfig.module.SorterModule;
import com.instrument.shop.guiceConfig.module.ValidatorModule;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.security.AuthenticationService;
import com.sparkjava.context.SparkJavaContext;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;

public class Main {
    public static void main(String[] args) throws IOException, NoSuchFieldException, IllegalAccessException {
        Injector injector = Guice.createInjector(
                new GsonModule(),
                new SecurityModule(),
                new ValidatorModule(),
                new SorterModule(),
                new FilterModule(),
                new RepositoryModule(),
                new FileSerializerModule(),
                new PropertiesModule(),
                new LoggingModule()
        );

        Properties properties = injector.getInstance(Properties.class);

        Gson gson = injector.getInstance(Gson.class);
        JsonDbContext dbContext = new JsonDbContext(
                gson,
                Map.of(
                        "userPath", properties.getProperty("database.json.user-file-path")
                ),
                injector.getInstance(UserRepository.class)
        );
        dbContext.loadData();

        SparkJavaContext sparkCtx = new SparkJavaContext(
                Integer.parseInt(properties.getProperty("server.port")),
                "application/json;charset=UTF-8",
                gson::fromJson,
                gson::toJson,
                injector.getInstance(Validator.class)::validate
        );

        AuthenticationService authService = injector.getInstance(AuthenticationService.class);
        sparkCtx.setAuthenticator((request -> {
            String jwt = request.headers("Authorization").substring(7);
            return authService.getUserFromToken(jwt);
        }));

        sparkCtx.createEndpoints(
                injector.getInstance(AuthenticationController.class),
                injector.getInstance(LoggingController.class),
                injector.getInstance(UserController.class),
                injector.getInstance(ImageController.class)
        );
        sparkCtx.registerExceptionHandler(injector.getInstance(ApplicationExceptionHandler.class));
    }
}