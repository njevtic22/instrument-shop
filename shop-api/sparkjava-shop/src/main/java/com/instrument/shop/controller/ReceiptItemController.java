package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.receipt.ReceiptItemViewDto;
import com.instrument.shop.mapper.ReceiptMapper;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.service.ReceiptItemService;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/receipts/:receiptId/receipt-items")
public class ReceiptItemController {
    private final ReceiptItemService service;
    private final ReceiptMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public ReceiptItemController(ReceiptItemService service, ReceiptMapper mapper, PagingFilteringUtil pagingFilteringUtil) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @GetMapping
    @PreAuthorize("MANAGER")
    public PaginatedResponse<ReceiptItemViewDto> getAll(
            @PathParam("receiptId") Long receiptId,
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", defaultValue = {"id,asc"}) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, Object> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<ReceiptItem> allItemsPaginated = service.getAllByReceiptId(receiptId, filterData, sort, pageRequest);
        List<ReceiptItemViewDto> allItemsDto = allItemsPaginated.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allItemsDto,
                allItemsPaginated.totalElements(),
                allItemsPaginated.totalPages()
        );
    }
}
