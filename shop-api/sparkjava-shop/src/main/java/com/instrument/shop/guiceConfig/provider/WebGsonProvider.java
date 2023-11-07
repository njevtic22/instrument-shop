package com.instrument.shop.guiceConfig.provider;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import jakarta.inject.Provider;
import jakarta.inject.Singleton;

@Singleton
public class WebGsonProvider implements Provider<Gson> {
    @Override
    public Gson get() {
        return new GsonBuilder()
                .serializeNulls()
                .create();
    }
}
