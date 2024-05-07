package com.instrument.shop.util;

import jakarta.inject.Singleton;

import java.util.List;
import java.util.Map;

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

    public String getValidFilter(Map<String, String> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, String> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and lower(");
            if (key.equals("role")) {
                filterPart.append("cast(")
                        .append(columnPrefix)
                        .append(".")
                        .append(key)
                        .append(" as string)");
            } else {
                filterPart.append(columnPrefix)
                        .append(".")
                        .append(key);
            }
            filterPart.append(") like lower(:")
                    .append(key)
                    .append(")");
        }
        return getValidJpqlPart(filterPart.toString());
    }
}
