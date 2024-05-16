package com.instrument.shop.repository;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface CrudRepository<ID, T> {
    T save(T entity);

    List<T> saveAll(Iterable<T> entities);

    PaginatedResponse<T> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    Optional<T> findByIdAndArchivedFalse(ID id);

    boolean existsByIdAndArchivedFalse(ID id);

    int archive(T entity);

    int archiveById(ID id);
}
