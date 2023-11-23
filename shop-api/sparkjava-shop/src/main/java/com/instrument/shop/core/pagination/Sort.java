package com.instrument.shop.core.pagination;

public record Sort(String property, Order order) {
    public static final Sort UNSORTED = new Sort("UNSORTED", Order.ASC);
}
