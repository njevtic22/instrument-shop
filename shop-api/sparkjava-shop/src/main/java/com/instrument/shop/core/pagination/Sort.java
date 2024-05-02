package com.instrument.shop.core.pagination;

public record Sort(String property, Order order, Sort sortNext) {
    public static final Sort UNSORTED = new Sort("UNSORTED");

    public Sort(String property) {
        this(property, Order.ASC);
    }

    public Sort(String property, Order order) {
        this(property, order, null);
    }

    public boolean hasNext() {
        return sortNext != null;
    }

    public boolean isUnsorted() {
        return property.equals("UNSORTED");
    }

    @Override
    public String toString() {
        String orderBy = property + " " + order.toString();
        String orderByNext = "";

        if (sortNext != null) {
            orderByNext = ", " + sortNext;
        }

        return orderBy + orderByNext;
    }
}
