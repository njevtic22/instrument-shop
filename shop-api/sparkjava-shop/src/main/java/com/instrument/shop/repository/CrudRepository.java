package com.instrument.shop.repository;

import java.util.List;
import java.util.Optional;

public interface CrudRepository<ID, T> {
    long count();

    T save(T entity);

    List<T> saveAll(Iterable<T> entities);

    List<T> findAll();

    Optional<T> findById(ID id);
}
