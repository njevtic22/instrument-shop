package com.instrument.shop.core.pagination;

public record Sort(String property, Order order, Sort sortNext) {
    public static final Sort UNSORTED = new Sort("UNSORTED");

    public Sort(String property) {
        this(property, Order.ASC);
    }

    public Sort(String property, Order order) {
        this(property, order, null);
    }
}
