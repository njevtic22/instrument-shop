package com.instrument.shop.serializers.gsonSerializers;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

import java.lang.reflect.Type;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class LocalDateTimeSerializer implements JsonSerializer<LocalDateTime> {
    private final DateTimeFormatter formatter;

    public LocalDateTimeSerializer(DateTimeFormatter formatter) {
        this.formatter = formatter;
    }

    @Override
    public JsonElement serialize(LocalDateTime dateTime, Type typeOfSrc, JsonSerializationContext context) {
        return new JsonPrimitive(formatter.format(dateTime));
    }
}
