package com.instrument.shop.dbContext;

import com.google.gson.Gson;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.serializers.fileDeserializers.JsonFileDeserializer;
import com.instrument.shop.util.NumberGenerator;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.TreeMap;

public class JsonDbContext {
    private final Gson gson;
    private final Map<String, String> filePaths;

    private final UserRepository userRepository;

    public JsonDbContext(Gson gson, Map<String, String> filePaths, UserRepository userRepository) {
        this.gson = gson;
        this.filePaths = filePaths;
        this.userRepository = userRepository;
    }

    public void loadData() throws IOException, NoSuchFieldException, IllegalAccessException {
        TreeMap<Long, User> users = new TreeMap<>();

        JsonFileDeserializer deserializer = new JsonFileDeserializer(
                gson,
                filePaths,
                users
        );
        deserializer.loadData();

//        userRepository.saveAll(users.values());       // writes loaded models to file unnecessarily

        Class<? extends UserRepository> userRepositoryClass = userRepository.getClass();
        Field dataField = userRepositoryClass.getDeclaredField("data");
        dataField.setAccessible(true);
        TreeMap<Long, User> repoUsers = (TreeMap<Long, User>) dataField.get(userRepository);
        repoUsers.putAll(users);

        Field userIdField = userRepositoryClass.getDeclaredField("userId");
        userIdField.setAccessible(true);
        NumberGenerator<Long> generator = (NumberGenerator<Long>) userIdField.get(userRepository);
        Class<NumberGenerator> numberGeneratorClass = NumberGenerator.class;
        Field currentField = numberGeneratorClass.getDeclaredField("current");
        currentField.setAccessible(true);
        currentField.set(generator, (long) repoUsers.size());


        users.clear();
    }
}
