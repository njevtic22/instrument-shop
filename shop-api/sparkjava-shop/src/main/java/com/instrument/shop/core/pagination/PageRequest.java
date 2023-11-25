package com.instrument.shop.core.pagination;

public class PageRequest {
    private final int page;
    private final int size;

    public PageRequest(int page, int size) {
        validate(page, size);
        this.page = page;
        this.size = size;
    }

    public PageRequest(String page, String size) {
        this.page = parseInt(page, "Page", 0);
        this.size = parseInt(size, "Size", 1);
    }

    private int parseInt(String valueStr, String valueMeaning, int minValue) {
        int value;
        try {
            value = Integer.parseInt(valueStr);
            if (value < minValue) {
                throw new IllegalArgumentException(valueMeaning + " must not be less than " + minValue);
            }
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid string format for " + valueMeaning + " argument", e);
        }

        return value;
    }

    private void validate(int page, int size) {
        if (page < 0) {
            throw new IllegalArgumentException("Page must not be less than 0");
        }
        if (size < 1) {
            throw new IllegalArgumentException("Size must not be less then 1");
        }
    }

    public int getPage() {
        return page;
    }

    public int getSize() {
        return size;
    }
}
