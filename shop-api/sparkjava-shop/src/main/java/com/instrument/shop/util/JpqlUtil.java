package com.instrument.shop.util;

import jakarta.inject.Singleton;

import java.util.List;

@Singleton
public class JpqlUtil {
    private final List<String> keywords = List.of("SELECT", "CREATE", "DROP", "UPDATE", "DELETE", "ALTER", "FROM", "UNSORTED");

    public String getValidJpqlPart(String jpqlPart) {
        String jpqlUpper = jpqlPart.toUpperCase();
        for (String keyword : keywords) {
            if (jpqlUpper.contains(keyword)) {
                return "";
            }
        }

        return jpqlPart;
    }

    public String getValidOrderBy(String orderBy) {
        String validOrderBy = getValidJpqlPart(orderBy);
        return validOrderBy.isEmpty() ? validOrderBy : " order by " + validOrderBy;
    }
}
