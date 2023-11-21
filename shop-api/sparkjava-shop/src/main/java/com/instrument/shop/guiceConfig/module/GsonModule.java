package com.instrument.shop.guiceConfig.module;

import com.google.gson.Gson;
import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import com.instrument.shop.guiceConfig.annotation.UserGson;
import com.instrument.shop.guiceConfig.provider.UserGsonProvider;
import com.instrument.shop.guiceConfig.provider.WebGsonProvider;

public class GsonModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(Gson.class).toProvider(WebGsonProvider.class).in(Scopes.SINGLETON);
        bind(Gson.class).annotatedWith(UserGson.class).toProvider(UserGsonProvider.class).in(Scopes.SINGLETON);
    }
}
