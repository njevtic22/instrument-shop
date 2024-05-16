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

            filterPart.append(" and lower(")
                    .append(columnPrefix)
                    .append(".")
                    .append(key)
                    .append(") like lower(:")
                    .append(key)
                    .append(")");
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidUserFilter(Map<String, String> filterData, String columnPrefix) {
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

    public String getValidAInstrumentFilter(Map<String, String> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, String> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and ");
            if (key.equals("quantityStart")) {
                filterPart.append(columnPrefix)
                        .append(".quantity >=");

            } else if (key.equals("quantityEnd")) {
                filterPart.append(columnPrefix)
                        .append(".quantity <=");

            } else if (key.equals("priceStart")) {
                filterPart.append(columnPrefix)
                        .append(".price >=");

            } else if (key.equals("priceEnd")) {
                filterPart.append(columnPrefix)
                        .append(".price <=");

            } else {
                filterPart.append("lower(");
                if (key.equals("type")) {
                    filterPart.append(columnPrefix)
                            .append(".type.name");
                } else {
                    filterPart.append(columnPrefix)
                            .append(".")
                            .append(key);
                }
                filterPart.append(") like lower(:")
                        .append(key)
                        .append(")");
                continue;
            }
            filterPart.append(" :")
                    .append(key);
        }
        return getValidJpqlPart(filterPart.toString());
    }
}
