package com.instrument.shop.repository;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface CrudRepository<ID, T> {
    long count();

    T save(T entity);

    List<T> saveAll(Iterable<T> entities);

    PaginatedResponse<T> findAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    Optional<T> findById(ID id);

    boolean existsById(ID id);

    int delete(T entity);

    int deleteById(ID id);
}
