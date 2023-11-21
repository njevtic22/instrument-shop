package com.instrument.shop.repository;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

public interface CrudRepository<ID, T> {
    long count();

    T save(T entity) throws IOException;

    List<T> saveAll(Iterable<T> entities) throws IOException;

    List<T> findAll();

    Optional<T> findById(ID id);

    boolean existsById(ID id);

    void delete(T entity) throws IOException;

    void deleteById(ID id) throws IOException;
}
