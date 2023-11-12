package com.instrument.shop.service;

import java.util.List;

public interface CrudService<ID, T> {
    T add(T entity);

    List<T> getAll();

    T getById(ID id);

    T update(ID id, T changes);

    void delete(ID id);
}
