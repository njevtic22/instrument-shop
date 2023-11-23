package com.instrument.shop.core.pagination;

public enum Order {
    ASC(1),
    DESC(-1);

    private final int order;

    Order(int order) {
        this.order = order;
    }

    public static Order fromString(String value) {
        try {
            return Order.valueOf(value.toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(
                    String.format(
                            "Invalid value '%s' for order given; Has to be either 'asc' or 'desc' (case insensitive)",
                            value
                    ),
                    e
            );
        }
    }

    public boolean isAscending() {
        return this.equals(ASC);
    }

    public boolean isDescending() {
        return this.equals(DESC);
    }

    public int getOrder() {
        return order;
    }
}
