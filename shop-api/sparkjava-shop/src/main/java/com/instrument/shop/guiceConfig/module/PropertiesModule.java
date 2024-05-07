package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.name.Names;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesModule extends AbstractModule {
    @Override
    protected void configure() {
        Properties properties = getProperties("application.properties");

        bind(Properties.class).toInstance(properties);
        bind(Properties.class).annotatedWith(Names.named("passayMessages")).toInstance(getProperties(properties.getProperty("passay.messages.properties")));
        bind(String.class).annotatedWith(Names.named("passwordBlacklist")).toInstance(properties.getProperty("password.blacklist"));

        bind(String.class).annotatedWith(Names.named("secretKey")).toInstance(properties.getProperty("secret.key"));
    }

    private Properties getProperties(String propertiesPath) {
        try (InputStream propertiesStream = getClass().getClassLoader().getResourceAsStream(propertiesPath)) {
            Properties properties = new Properties();
            properties.load(propertiesStream);
            return properties;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
