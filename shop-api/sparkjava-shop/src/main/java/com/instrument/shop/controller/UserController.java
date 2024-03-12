package com.instrument.shop.controller;

import com.google.gson.Gson;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
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
import com.sparkjava.context.annotation.PathParam;
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
import java.util.Map;

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
    public String getAll(Request request) {
        Map<String, String> filterData = buildFilterData(request);
        Sort sort = pagingFilteringUtil.buildSort(request);
        PageRequest pageRequest = pagingFilteringUtil.buildPageRequest(request);

        PaginatedResponse<User> allUsersPaginated = service.getAll(filterData, sort, pageRequest);
        List<UserViewDto> allUsersDto = allUsersPaginated.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        PaginatedResponse<UserViewDto> responseDto = new PaginatedResponse<>(
                allUsersDto,
                allUsersPaginated.totalElements(),
                allUsersPaginated.totalPages()
        );
        return gson.toJson(responseDto);
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    public String getById(@PathParam("id") String idStr) {
        Long id = Long.valueOf(idStr);
        User found = service.getById(id);
        UserViewDto foundDto = mapper.toViewDto(found);

        return gson.toJson(foundDto);
    }

    @PutMapping("/:id")
    @MethodOrder(40)
    public String update(Request request, @PathParam("id") String idStr) throws IOException {
        Long id = Long.valueOf(idStr);
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
    public String deleteUser(@PathParam("id") String idStr) throws IOException {
        Long id = Long.valueOf(idStr);
        service.delete(id);

        return "204 no content";
    }

    private Map<String, String> buildFilterData(Request request) {
        String[] filterKeys = {"filterName", "filterSurname", "filterEmail", "filterUsername", "filterRole"};
        return pagingFilteringUtil.buildFilterData(request, filterKeys);
    }
}
