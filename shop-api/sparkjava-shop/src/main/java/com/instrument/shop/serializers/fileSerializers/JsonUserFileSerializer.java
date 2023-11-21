package com.instrument.shop.serializers.fileSerializers;

import com.google.gson.Gson;
import com.instrument.shop.guiceConfig.annotation.UserGson;
import com.instrument.shop.model.User;
import jakarta.inject.Inject;
import jakarta.inject.Named;

public class JsonUserFileSerializer extends JsonFileSerializer<Long, User> {
    @Inject
    public JsonUserFileSerializer(@Named("userFilePath") String filePath, @UserGson Gson gson) {
        super(filePath, gson);
    }
}
