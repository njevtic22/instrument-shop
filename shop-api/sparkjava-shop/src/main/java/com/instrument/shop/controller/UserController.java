package com.instrument.shop.controller;

import com.google.gson.Gson;
import com.instrument.shop.dto.user.AddUserDto;
import com.instrument.shop.mapper.UserMapper;
import com.instrument.shop.model.User;
import com.instrument.shop.service.UserService;
import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.annotation.ResponseStatus;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import spark.Request;
import spark.Response;

@Singleton
@RequestMapping("api/users")
public class UserController {
    private final Gson gson;
    private final UserMapper mapper;
    private final UserService service;

    @Inject
    public UserController(Gson gson, UserMapper mapper, UserService service) {
        this.gson = gson;
        this.mapper = mapper;
        this.service = service;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(201)
    public String add(Request request, Response response) {
        AddUserDto toAddDto = gson.fromJson(request.body(), AddUserDto.class);

        User toAdd = mapper.toModel(toAddDto);
        User added = service.add(toAdd, toAddDto.getRepeatedPassword());

        response.header("location", "api/users/" + added.getId());
        return "201 created";
    }

    @GetMapping
    @MethodOrder(80)
    public String getAll(Request request, Response response) {
        return gson.toJson(service.getAll());
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    public String getById(Request request, Response response) {
//        Long id = Long.valueOf(request.params(":id"));
//        return gson.toJson(users.get(id));

        return "To be implemented";
    }

    @PutMapping("/:id")
    @MethodOrder(40)
    public String update(Request request, Response response) {
//        Long id = Long.valueOf(request.params(":id"));
//        User updated = users.get(id);
//        updated.setName("Changed " + updated.getId());
//        updated.setSurname("Changed " + updated.getId());
//        updated.setEmail("Changed " + updated.getId());
//        updated.setUsername("Changed " + updated.getId());
//        users.put(updated.getId(), updated);
//
//        return gson.toJson(updated);

        return "To be implemented";
    }

    @DeleteMapping("/:id")
    @MethodOrder(20)
    @ResponseStatus(204)
    public String deleteUser(Request request, Response response) {
//        Long id = Long.valueOf(request.params(":id"));
//        User deleted = users.get(id);
//        deleted.setArchived(true);
//        users.put(deleted.getId(), deleted);

//        return HttpStatus.NO_CONTENT_204 + " " + HttpStatus.getMessage(HttpStatus.NO_CONTENT_204);

        return "To be implemented";
    }
}
