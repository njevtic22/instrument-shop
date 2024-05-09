package com.instrument.shop.util;

import java.util.Iterator;

public class ImageUrlIterator implements Iterator<String> {
    private final String[] urls;
    private int currentIndex = -1;

    public ImageUrlIterator(String[] urls) {
        this.urls = urls;
    }

    @Override
    public boolean hasNext() {
        return true;
    }

    @Override
    public String next() {
        currentIndex = (currentIndex + 1) % urls.length;
        return urls[currentIndex];
    }
}
