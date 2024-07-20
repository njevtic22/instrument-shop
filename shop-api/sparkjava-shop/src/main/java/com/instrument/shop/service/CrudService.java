package com.instrument.shop.service;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;

import java.util.Map;

public interface CrudService<ID, T> {
    T add(T entity);

    PaginatedResponse<T> getAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest);

    T getById(ID id);

    T update(ID id, T changes);

    void delete(ID id);
}
