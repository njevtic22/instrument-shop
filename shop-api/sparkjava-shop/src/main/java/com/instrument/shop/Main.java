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
import com.instrument.shop.guiceConfig.module.GsonModule;
import com.instrument.shop.guiceConfig.module.LoggingModule;
import com.instrument.shop.guiceConfig.module.PersistenceModule;
import com.instrument.shop.guiceConfig.module.PropertiesModule;
import com.instrument.shop.guiceConfig.module.SecurityModule;
import com.instrument.shop.guiceConfig.module.ValidatorModule;
import com.sparkjava.context.SparkJavaContext;
import com.sparkjava.context.core.Authenticator;
import com.sparkjava.context.core.RolesGetter;

import java.util.Properties;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        Injector injector = Guice.createInjector(
                new PersistenceModule(),
                new GsonModule(),
                new SecurityModule(),
                new ValidatorModule(),
                new PropertiesModule(),
                new LoggingModule()
        );

        Properties properties = injector.getInstance(Properties.class);
        Gson gson = injector.getInstance(Gson.class);

        SparkJavaContext sparkCtx = new SparkJavaContext(
                Integer.parseInt(properties.getProperty("server.port")),
                "application/json;charset=UTF-8",
                gson::fromJson,
                gson::toJson,
                injector.getInstance(Validator.class)::validate
        );

        sparkCtx.setAuthenticator(injector.getInstance(Authenticator.class));
        sparkCtx.setAuthorizer(Set.of("MANAGER", "SALESMAN", "CUSTOMER"), injector.getInstance(RolesGetter.class));

        sparkCtx.createEndpoints(
                injector.getInstance(AuthenticationController.class),
                injector.getInstance(LoggingController.class),
                injector.getInstance(UserController.class),
                injector.getInstance(ImageController.class)
        );
        sparkCtx.registerExceptionHandler(injector.getInstance(ApplicationExceptionHandler.class));
    }
}