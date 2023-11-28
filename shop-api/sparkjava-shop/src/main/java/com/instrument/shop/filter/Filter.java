package com.instrument.shop.filter;

import java.util.List;
import java.util.Map;

public interface Filter<T> {
    void filter(List<T> entities, Map<String, String> filterData);
}
