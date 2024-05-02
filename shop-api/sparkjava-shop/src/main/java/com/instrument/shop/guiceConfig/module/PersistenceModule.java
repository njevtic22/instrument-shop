package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class PersistenceModule extends AbstractModule {
    @Override
    protected void configure() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        bind(EntityManagerFactory.class).toInstance(emf);

        Runtime.getRuntime().addShutdownHook(new Thread(emf::close, "Thread-EntityManagerFactory::close"));
    }
}
