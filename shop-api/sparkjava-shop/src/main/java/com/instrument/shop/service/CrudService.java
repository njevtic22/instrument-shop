package com.instrument.shop.service;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;

import java.io.IOException;
import java.util.Map;

public interface CrudService<ID, T> {
    T add(T entity) throws IOException;

    PaginatedResponse<T> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    T getById(ID id);

    T update(ID id, T changes) throws IOException;

    void delete(ID id) throws IOException;
}
