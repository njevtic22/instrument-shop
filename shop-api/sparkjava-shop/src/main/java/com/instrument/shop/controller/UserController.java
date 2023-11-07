package com.instrument.shop.controller;

import com.google.gson.Gson;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import org.eclipse.jetty.http.HttpStatus;
import spark.Request;
import spark.Response;

import java.util.Map;
import java.util.TreeMap;

@Singleton
@RequestMapping("api/users")
public class UserController {
    private final Gson gson;

    private final Map<Long, User> users = new TreeMap<>();

    @Inject
    public UserController(Gson gson) {
        this.gson = gson;

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
            users.put(user.getId(), user);
        }
    }

    @PostMapping
    public String add(Request request, Response response) {
        User saved = new User(
                (long) users.size() + 1,
                "Name " + users.size() + 1,
                "Name " + users.size() + 1,
                "Name " + users.size() + 1,
                "Name " + users.size() + 1,
                "Name " + users.size() + 1,
                false,
                Role.MANAGER
        );
        users.put(saved.getId(), saved);

        response.header("location", request.url() + "/" + saved.getId());
        return HttpStatus.CREATED_201 + " " + HttpStatus.getMessage(HttpStatus.CREATED_201);
    }

    @GetMapping
    public String getAll(Request request, Response response) {
        return gson.toJson(users.values());
    }

    @GetMapping("/:id")
    public String getById(Request request, Response response) {
        Long id = Long.valueOf(request.params(":id"));
        return gson.toJson(users.get(id));
    }

    @PutMapping("/:id")
    public String update(Request request, Response response) {
        Long id = Long.valueOf(request.params(":id"));
        User updated = users.get(id);
        updated.setName("Changed " + updated.getId());
        updated.setSurname("Changed " + updated.getId());
        updated.setEmail("Changed " + updated.getId());
        updated.setUsername("Changed " + updated.getId());
        users.put(updated.getId(), updated);

        return gson.toJson(updated);
    }

    @DeleteMapping("/:id")
    public String deleteUser(Request request, Response response) {
        Long id = Long.valueOf(request.params(":id"));
        User deleted = users.get(id);
        deleted.setArchived(true);
        users.put(deleted.getId(), deleted);

        return HttpStatus.NO_CONTENT_204 + " " + HttpStatus.getMessage(HttpStatus.NO_CONTENT_204);
    }
}
