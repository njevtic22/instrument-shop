package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.user.AddUserDto;
import com.instrument.shop.dto.user.PasswordChangeDto;
import com.instrument.shop.dto.user.UpdateUserDto;
import com.instrument.shop.dto.user.UserViewDto;
import com.instrument.shop.mapper.UserMapper;
import com.instrument.shop.model.User;
import com.instrument.shop.security.AuthenticationService;
import com.instrument.shop.service.UserService;
import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestHeader;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.annotation.ResponseStatus;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.validation.Valid;
import spark.Request;
import spark.Response;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/users")
public class UserController {
    private final UserMapper mapper;
    private final UserService service;
    private final AuthenticationService authService;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public UserController(
            UserMapper mapper,
            UserService service,
            AuthenticationService authService,
            PagingFilteringUtil pagingFilteringUtil
    ) {
        this.mapper = mapper;
        this.service = service;
        this.authService = authService;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(201)
    public void add(Request request, Response response, @Valid @RequestBody AddUserDto toAddDto) throws IOException {
        User toAdd = mapper.toModel(toAddDto);
        User added = service.add(toAdd, toAddDto.getRepeatedPassword());

        response.header("location", request.url() + "/" + added.getId());
    }

    @GetMapping
    @MethodOrder(80)
    public PaginatedResponse<UserViewDto> getAll(
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", defaultValue = {"unsorted"}) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, String> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<User> allUsersPaginated = service.getAll(filterData, sort, pageRequest);
        List<UserViewDto> allUsersDto = allUsersPaginated.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allUsersDto,
                allUsersPaginated.totalElements(),
                allUsersPaginated.totalPages()
        );
    }

    @PutMapping("/password")
    @MethodOrder(70)
    @ResponseStatus(204)
    public void changePassword(@RequestHeader("Authorization") String authorization, @Valid @RequestBody PasswordChangeDto passwordBody) throws IOException {
        User authenticated = authService.getUserFromToken(authorization.substring(7));
        service.changePassword(
                authenticated,
                passwordBody.oldPassword(),
                passwordBody.newPassword(),
                passwordBody.repeatedPassword()
        );
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    public UserViewDto getById(@PathParam("id") Long id) {
        User found = service.getById(id);
        return mapper.toViewDto(found);
    }

    @PutMapping("/:id")
    @MethodOrder(40)
    public UserViewDto update(@PathParam("id") Long id, @Valid @RequestBody UpdateUserDto changesDto) throws IOException {
        User changes = mapper.toModel(changesDto);
        User updated = service.update(id, changes);
        return mapper.toViewDto(updated);
    }

    @DeleteMapping("/:id")
    @MethodOrder(20)
    @ResponseStatus(204)
    public void deleteUser(@PathParam("id") Long id) throws IOException {
        service.delete(id);
    }
}
