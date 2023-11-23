package com.instrument.shop.controller;

import com.google.gson.Gson;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.user.AddUserDto;
import com.instrument.shop.dto.user.UpdateUserDto;
import com.instrument.shop.dto.user.UserViewDto;
import com.instrument.shop.mapper.UserMapper;
import com.instrument.shop.model.User;
import com.instrument.shop.service.UserService;
import com.instrument.shop.util.Validator;
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

import java.io.IOException;
import java.util.List;

@Singleton
@RequestMapping("api/users")
public class UserController {
    private final Gson gson;
    private final UserMapper mapper;
    private final UserService service;
    private final Validator validator;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public UserController(
            Gson gson,
            UserMapper mapper,
            UserService service,
            Validator validator,
            PagingFilteringUtil pagingFilteringUtil
    ) {
        this.gson = gson;
        this.mapper = mapper;
        this.service = service;
        this.validator = validator;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(201)
    public String add(Request request, Response response) throws IOException {
        AddUserDto toAddDto = gson.fromJson(request.body(), AddUserDto.class);
        validator.validate(toAddDto);

        User toAdd = mapper.toModel(toAddDto);
        User added = service.add(toAdd, toAddDto.getRepeatedPassword());

        response.header("location", request.url() + "/" + added.getId());
        return "201 created";
    }

    @GetMapping
    @MethodOrder(80)
    public String getAll(Request request, Response response) {
        Sort sort = pagingFilteringUtil.buildSort(request);

        List<User> allUsers = service.getAll(sort);
        List<UserViewDto> allUsersDto = allUsers
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return gson.toJson(allUsersDto);
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    public String getById(Request request, Response response) {
        Long id = Long.valueOf(request.params(":id"));
        User found = service.getById(id);
        UserViewDto foundDto = mapper.toViewDto(found);

        return gson.toJson(foundDto);
    }

    @PutMapping("/:id")
    @MethodOrder(40)
    public String update(Request request, Response response) throws IOException {
        Long id = Long.valueOf(request.params(":id"));
        UpdateUserDto changesDto = gson.fromJson(request.body(), UpdateUserDto.class);
        validator.validate(changesDto);

        User changes = mapper.toModel(changesDto);
        User updated = service.update(id, changes);
        UserViewDto updatedDto = mapper.toViewDto(updated);

        return gson.toJson(updatedDto);
    }

    @DeleteMapping("/:id")
    @MethodOrder(20)
    @ResponseStatus(204)
    public String deleteUser(Request request, Response response) throws IOException {
        Long id = Long.valueOf(request.params(":id"));
        service.delete(id);

        return "204 no content";
    }
}
