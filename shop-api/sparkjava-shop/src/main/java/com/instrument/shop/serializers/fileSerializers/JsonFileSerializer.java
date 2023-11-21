package com.instrument.shop.serializers.fileSerializers;

import com.google.gson.Gson;

import java.io.IOException;
import java.util.Map;

public abstract class JsonFileSerializer<ID, T> implements FileSerializer<ID, T> {
    private final String filePath;
    private final Gson gson;

    protected JsonFileSerializer(String filePath, Gson gson) {
        this.filePath = filePath;
        this.gson = gson;
    }

    @Override
    public void serialize(Map<ID, T> data) throws IOException {
        writeToFile(filePath, gson.toJson(data));
    }
}
