package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.cart.AddToCartDto;
import com.instrument.shop.dto.cart.CartItemViewDto;
import com.instrument.shop.mapper.InstrumentMapper;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.User;
import com.instrument.shop.service.AvailableInstrumentService;
import com.sparkjava.context.annotation.Authenticated;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.validation.Valid;

import java.util.List;
import java.util.Map;

@RequestMapping("api/carts")
public class CartController {
    private final AvailableInstrumentService service;
    private final InstrumentMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public CartController(AvailableInstrumentService service, InstrumentMapper mapper, PagingFilteringUtil pagingFilteringUtil) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @PostMapping
    @MethodOrder(100)
    @PreAuthorize("CUSTOMER")
    public void addToCart(@Authenticated User customer, @Valid @RequestBody AddToCartDto cartDto) {
        service.addToCart(customer, cartDto.getInstrumentId());
    }

    @GetMapping
    @MethodOrder(80)
    @PreAuthorize("CUSTOMER")
    public PaginatedResponse<CartItemViewDto> getAll(
            @Authenticated User customer,
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", defaultValue = {"id,asc"}) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, Object> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<AvailableInstrument> cart = service.getCart(customer, filterData, sort, pageRequest);
        List<CartItemViewDto> cartDto = cart.data()
                .stream()
                .map(mapper::toCartItemViewDto)
                .toList();

        return new PaginatedResponse<>(
                cartDto,
                cart.totalElements(),
                cart.totalPages()
        );
    }
}
