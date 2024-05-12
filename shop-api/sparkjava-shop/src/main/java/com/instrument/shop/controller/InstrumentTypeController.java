package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.instrumentType.AddInstrumentTypeDto;
import com.instrument.shop.dto.instrumentType.InstrumentTypeViewDto;
import com.instrument.shop.mapper.InstrumentTypeMapper;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.service.InstrumentTypeService;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PreAuthorize;
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
@RequestMapping("api/instrument-types")
public class InstrumentTypeController {
    private final InstrumentTypeService service;
    private final InstrumentTypeMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public InstrumentTypeController(
            InstrumentTypeService service,
            InstrumentTypeMapper mapper,
            PagingFilteringUtil pagingFilteringUtil
    ) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(201)
    @PreAuthorize("SALESMAN")
    public void add(Request request, Response response, @Valid @RequestBody AddInstrumentTypeDto toAddDto) {
        InstrumentType toAdd = mapper.toModel(toAddDto);
        InstrumentType added = service.add(toAdd);

        response.header("location", request.url() + "/" + added.getId());
    }

    @GetMapping
    @MethodOrder(80)
    @PreAuthorize
    public PaginatedResponse<InstrumentTypeViewDto> getAll(
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", required = false) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, String> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<InstrumentType> allTypes = service.getAll(filterData, sort, pageRequest);
        List<InstrumentTypeViewDto> allTypesDto = allTypes.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allTypesDto,
                allTypes.totalElements(),
                allTypes.totalPages()
        );
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    @PreAuthorize
    public InstrumentTypeViewDto getById(@PathParam("id") Long id) {
        InstrumentType found = service.getById(id);
        return mapper.toViewDto(found);
    }
}
