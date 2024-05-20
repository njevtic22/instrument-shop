package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.dto.receipt.ReceiptItemViewDto;
import com.instrument.shop.mapper.ReceiptMapper;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.service.ReceiptItemService;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;

@Singleton
@RequestMapping("api/receipts/:receiptId/receipt-items")
public class ReceiptItemController {
    private final ReceiptItemService service;
    private final ReceiptMapper mapper;

    @Inject
    public ReceiptItemController(ReceiptItemService service, ReceiptMapper mapper) {
        this.service = service;
        this.mapper = mapper;
    }

    @GetMapping
    @PreAuthorize("MANAGER")
    public List<ReceiptItemViewDto> getAll(@PathParam("receiptId") Long receiptId) {
        List<ReceiptItem> allItems = service.getAllByReceiptId(receiptId);
        return allItems
                .stream()
                .map(mapper::toViewDto)
                .toList();
    }
}
