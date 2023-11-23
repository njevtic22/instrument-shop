package com.instrument.shop.sorter;

import com.instrument.shop.core.pagination.Sort;

import java.util.List;

public interface Sorter<T> {
    void sort(List<T> entities, Sort sort);
}
