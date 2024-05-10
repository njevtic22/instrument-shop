package com.instrument.shop.util;

import java.util.Iterator;

public class CycleIterator implements Iterator<String> {
    private final String[] arr;
    private int currentIndex = -1;

    public CycleIterator(String[] arr) {
        this.arr = arr;
    }

    @Override
    public boolean hasNext() {
        return true;
    }

    @Override
    public String next() {
        currentIndex = (currentIndex + 1) % arr.length;
        return arr[currentIndex];
    }
}
