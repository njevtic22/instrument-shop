package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.instrument.BoughtViewDto;
import com.instrument.shop.dto.instrument.BuyInstrumentsDto;
import com.instrument.shop.mapper.InstrumentMapper;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.User;
import com.instrument.shop.service.BoughtInstrumentService;
import com.sparkjava.context.annotation.Authenticated;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
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

import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/bought-instruments")
public class BoughtInstrumentController {
    private final BoughtInstrumentService service;
    private final InstrumentMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public BoughtInstrumentController(BoughtInstrumentService service, InstrumentMapper mapper, PagingFilteringUtil pagingFilteringUtil) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(204)
    @PreAuthorize("CUSTOMER")
    public void buy(@Authenticated User customer, @Valid @RequestBody BuyInstrumentsDto buyDto) {
        service.buy(customer, buyDto.getInstrumentQuantity(), buyDto.getPaid());
    }

    @GetMapping
    @MethodOrder(80)
    @PreAuthorize({"MANAGER", "CUSTOMER"})
    public PaginatedResponse<BoughtViewDto> getAll(
            @Authenticated User user,
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", required = false) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, String> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<BoughtInstrument> allInstruments;
        if (user.isCustomer()) {
            allInstruments = service.getAllByCustomer(user, filterData, sort, pageRequest);
        } else {
            allInstruments = service.getAll(filterData, sort, pageRequest);
        }

        List<BoughtViewDto> allInstrumentsDto = allInstruments.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allInstrumentsDto,
                allInstruments.totalElements(),
                allInstruments.totalPages()
        );
    }
}
