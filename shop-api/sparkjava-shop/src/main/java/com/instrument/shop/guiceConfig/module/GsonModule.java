package com.instrument.shop.guiceConfig.module;

import com.google.gson.Gson;
import com.google.inject.AbstractModule;
import com.instrument.shop.guiceConfig.provider.WebGsonProvider;

public class GsonModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(Gson.class).toProvider(WebGsonProvider.class);
    }
}
