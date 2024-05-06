package com.instrument.shop.repository;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface CrudRepository<ID, T> {
    long count();

    T save(T entity) throws IOException;

    List<T> saveAll(Iterable<T> entities) throws IOException;

    PaginatedResponse<T> findAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    Optional<T> findById(ID id);

    boolean existsById(ID id);

    int delete(T entity) throws IOException;

    int deleteById(ID id) throws IOException;
}
