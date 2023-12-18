package com.instrument.shop.serializers.gsonDeserializers;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;

import java.lang.reflect.Type;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class LocalDateTimeDeserializer implements JsonDeserializer<LocalDateTime> {
    private final DateTimeFormatter formatter;

    public LocalDateTimeDeserializer(DateTimeFormatter formatter) {
        this.formatter = formatter;
    }

    @Override
    public LocalDateTime deserialize(JsonElement jsonElement, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return LocalDateTime.parse(jsonElement.getAsString(), formatter);
    }
}
