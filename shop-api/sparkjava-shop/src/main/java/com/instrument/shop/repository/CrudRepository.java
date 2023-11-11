package com.instrument.shop.repository;

import java.util.List;

public interface CrudRepository<ID, T> {
    long count();

    List<T> findAll();
}
