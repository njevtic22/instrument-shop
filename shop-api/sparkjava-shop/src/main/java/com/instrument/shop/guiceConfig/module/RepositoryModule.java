package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Provides;
import com.google.inject.multibindings.MapBinder;
import com.instrument.shop.model.User;

import java.util.Map;
import java.util.TreeMap;

public class RepositoryModule extends AbstractModule {
    @Override
    protected void configure() {
        // TODO: Try deserializing file into map, put map in this module with constructor
        // use those loaded maps for injecting into repositories with MapBinder
        // then and the end of configure() method set those maps to null


//        MapBinder<Long, User> userMapBinder = MapBinder.newMapBinder(
//                binder(),
//                Long.class,
//                User.class
//        );
//        userMapBinder.addBinding(0L).toInstance(new User());

    }

    @Provides
    private Map<Long, User> getUsersMap() {
        return new TreeMap<>();
    }
}
