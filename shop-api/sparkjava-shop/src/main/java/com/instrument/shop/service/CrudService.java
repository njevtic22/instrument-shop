package com.instrument.shop.service;

import java.io.IOException;
import java.util.List;

public interface CrudService<ID, T> {
    T add(T entity) throws IOException;

    List<T> getAll();

    T getById(ID id);

    T update(ID id, T changes) throws IOException;

    void delete(ID id) throws IOException;
}
