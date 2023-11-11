package com.instrument.shop.repository;

import java.util.List;

public interface CrudRepository<ID, T> {
    long count();

    T save(T entity);

    List<T> saveAll(Iterable<T> entities);

    List<T> findAll();
}
