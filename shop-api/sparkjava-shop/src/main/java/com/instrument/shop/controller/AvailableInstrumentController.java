package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.instrument.InstrumentViewDto;
import com.instrument.shop.mapper.InstrumentMapper;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.service.AvailableInstrumentService;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/available-instruments")
public class AvailableInstrumentController {
    private final AvailableInstrumentService service;
    private final InstrumentMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public AvailableInstrumentController(AvailableInstrumentService service, InstrumentMapper mapper, PagingFilteringUtil pagingFilteringUtil) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @GetMapping
    @MethodOrder(80)
    public PaginatedResponse<InstrumentViewDto> getAll(
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", required = false) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, String> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<AvailableInstrument> allInstruments = service.getAll(filterData, sort, pageRequest);
        List<InstrumentViewDto> allInstrumentsDto = allInstruments.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allInstrumentsDto,
                allInstruments.totalElements(),
                allInstruments.totalPages()
        );
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    public InstrumentViewDto getById(@PathParam("id") Long id) {
        AvailableInstrument found = service.getById(id);
        return mapper.toViewDto(found);
    }
}
