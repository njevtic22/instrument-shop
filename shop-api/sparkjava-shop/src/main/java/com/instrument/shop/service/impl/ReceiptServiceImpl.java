package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.repository.ReceiptRepository;
import com.instrument.shop.service.CodeService;
import com.instrument.shop.service.ReceiptItemService;
import com.instrument.shop.service.ReceiptService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.Map;
import java.util.Objects;

@Singleton
public class ReceiptServiceImpl implements ReceiptService {
    private final ReceiptRepository repository;
    private final ReceiptItemService itemService;
    private final CodeService codeService;

    @Inject
    public ReceiptServiceImpl(ReceiptRepository repository, ReceiptItemService itemService, CodeService codeService) {
        this.repository = repository;
        this.itemService = itemService;
        this.codeService = codeService;
    }

    @Override
    public Receipt add(Receipt newReceipt) {
        validateCode(newReceipt.getCode());

        long counted = repository.count();
        Receipt toAdd = new Receipt(
                codeService.generateCode(counted + 1, 4),
                newReceipt.getTotalPrice(),
                newReceipt.getPaid(),
                newReceipt.getChange(),
                newReceipt.getIssuedAt(),
                newReceipt.getItems()
        );
        toAdd.getItems().forEach(item -> item.setReceipt(toAdd));

        Receipt added = repository.save(toAdd);
        itemService.saveAll(added.getItems());
        return added;
    }

    @Override
    public PaginatedResponse<Receipt> getAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAll(filterData, sort, pageRequest);
    }

    @Override
    public Receipt getById(Long id) {
        Objects.requireNonNull(id, "Id must not be null");
        return repository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Instrument", id));
    }

    @Override
    public double getProfit(Map<String, Object> filterData) {
        return repository.countProfit(filterData);
    }

    @Override
    public void validateCode(String code) {
        if (repository.existsByCode(code)) {
            throw new UniquePropertyException("Code", code);
        }
    }
}
