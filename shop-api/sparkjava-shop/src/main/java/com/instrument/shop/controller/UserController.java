package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.user.AddUserDto;
import com.instrument.shop.dto.user.PasswordChangeDto;
import com.instrument.shop.dto.user.UpdateUserDto;
import com.instrument.shop.dto.user.UpdateUserResponseDto;
import com.instrument.shop.dto.user.UserViewDto;
import com.instrument.shop.mapper.UserMapper;
import com.instrument.shop.model.User;
import com.instrument.shop.security.TokenUtils;
import com.instrument.shop.service.UserService;
import com.sparkjava.context.annotation.Authenticated;
import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.annotation.ResponseStatus;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.validation.Valid;
import spark.Request;
import spark.Response;

import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/users")
public class UserController {
    private final UserService service;
    private final UserMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;
    private final TokenUtils tokenUtils;

    @Inject
    public UserController(
            UserService service,
            UserMapper mapper,
            PagingFilteringUtil pagingFilteringUtil,
            TokenUtils tokenUtils
    ) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
        this.tokenUtils = tokenUtils;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(201)
    @PreAuthorize({"MANAGER"})
    public void add(Request request, Response response, @Valid @RequestBody AddUserDto toAddDto) {
        User toAdd = mapper.toModel(toAddDto);
        User added = service.add(toAdd, toAddDto.getRepeatedPassword());

        response.header("location", request.url() + "/" + added.getId());
    }

    @GetMapping
    @MethodOrder(80)
    @PreAuthorize({"MANAGER", "SALESMAN"})
    public PaginatedResponse<UserViewDto> getAll(
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", required = false) String[] sortStr,
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

    @PutMapping
    @MethodOrder(60)
    @PreAuthorize
    public UpdateUserResponseDto update(@Authenticated User authenticated, @Valid @RequestBody UpdateUserDto changesDto) {
        String originalUsername = authenticated.getUsername();

        User changes = mapper.toModel(changesDto);
        User updated = service.update(authenticated.getId(), changes);

        String jwt = "";
        if (!originalUsername.equals(updated.getUsername())) {
            jwt = tokenUtils.generateToken(updated.getUsername(), updated.getRole().toString());
        }

        UserViewDto updatedDto = mapper.toViewDto(updated);
        return new UpdateUserResponseDto(updatedDto, jwt);
    }

    @PutMapping("/password")
    @MethodOrder(50)
    @ResponseStatus(204)
    @PreAuthorize
    public void changePassword(@Authenticated User authenticated, @Valid @RequestBody PasswordChangeDto passwordBody) {
        service.changePassword(
                authenticated,
                passwordBody.oldPassword(),
                passwordBody.newPassword(),
                passwordBody.repeatedPassword()
        );
    }

    @PostMapping("/image")
    @MethodOrder(45)
    @ResponseStatus(204)
    @PreAuthorize
    public void addImage(@Authenticated User authenticated, @QueryParam("imageId") Long imageId) {
        service.addImage(authenticated, imageId);
    }

    @GetMapping("/:id")
    @MethodOrder(40)
    @PreAuthorize
    public UserViewDto getById(@PathParam("id") Long id) {
        User found = service.getById(id);
        return mapper.toViewDto(found);
    }

    @DeleteMapping("/:id")
    @MethodOrder(20)
    @ResponseStatus(204)
    @PreAuthorize({"MANAGER"})
    public void deleteUser(@PathParam("id") Long id) {
        service.delete(id);
    }
}
