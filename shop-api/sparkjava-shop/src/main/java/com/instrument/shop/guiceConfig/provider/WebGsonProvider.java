package com.instrument.shop.guiceConfig.provider;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.instrument.shop.serializers.gsonDeserializers.LocalDateTimeDeserializer;
import com.instrument.shop.serializers.gsonSerializers.LocalDateTimeSerializer;
import jakarta.inject.Provider;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class WebGsonProvider implements Provider<Gson> {
    @Override
    public Gson get() {
        return new GsonBuilder()
                .registerTypeAdapter(LocalDateTime.class, new LocalDateTimeSerializer(DateTimeFormatter.ISO_LOCAL_DATE_TIME))
                .registerTypeAdapter(LocalDateTime.class, new LocalDateTimeDeserializer(DateTimeFormatter.ISO_LOCAL_DATE_TIME))
                .serializeNulls()
                .create();
    }
}
