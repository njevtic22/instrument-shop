package com.instrument.shop.repository.impl;

import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Singleton
public class UserRepositoryImpl implements UserRepository {
    private final TreeMap<Long, User> data;

    @Inject
    public UserRepositoryImpl(Map<Long, User> data) {
        this.data = new TreeMap<>(data);

        for (int i = 1; i <= 10; i++) {
            User user = new User(
                    (long) i,
                    "Name " + i,
                    "Name " + i,
                    "Name " + i,
                    "Name " + i,
                    "Name " + i,
                    false,
                    Role.MANAGER
            );
            this.data.put(user.getId(), user);
        }
    }

    @Override
    public long count() {
        return data.size();
    }

    @Override
    public List<User> findAll() {
        return new ArrayList<>(data.values());
    }
}
