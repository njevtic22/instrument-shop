package com.instrument.shop.serializers.fileDeserializers;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import com.instrument.shop.serializers.serializedModel.jsonModel.JsonUser;

import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.TreeMap;

public class JsonFileDeserializer extends FileDeserializer {
    private final Gson gson;

    private Map<Long, JsonUser> jsonUsers;

    public JsonFileDeserializer(Gson gson, Map<String, String> filePaths, Map<Long, User> loadedUsers) {
        super(filePaths, loadedUsers);
        this.gson = gson;
    }

    @Override
    public void loadData() throws IOException {
        loadUsers();

        buildReferences();
        clearJsonMaps();
    }

    private void loadUsers() throws IOException {
        FileReader in = new FileReader(getFile(filePaths.get("userPath")));

        Type jsonUsersType = new TypeToken<TreeMap<Long, JsonUser>>() {}.getType();
        jsonUsers = gson.fromJson(in, jsonUsersType);

        jsonUsers.values().forEach(jsonUser -> {
            User user = toModel(jsonUser);
            loadedUsers.put(user.getId(), user);
        });

        in.close();
    }

    private void buildReferences() {

    }

    private void clearJsonMaps() {
        jsonUsers.clear();
    }

    private User toModel(JsonUser jsonUser) {
        return new User(
                jsonUser.id(),
                jsonUser.name(),
                jsonUser.surname(),
                jsonUser.email(),
                jsonUser.username(),
                jsonUser.password(),
                jsonUser.archived(),
                Role.valueOf(jsonUser.role())
        );
    }
}
