package com.instrument.shop.core.pagination;

import jakarta.inject.Singleton;

import java.math.BigDecimal;
import java.time.Instant;
import java.time.ZoneId;
import java.util.HashMap;
import java.util.Map;

@Singleton
public class PagingFilteringUtil {
    public Map<String, Object> buildFilterData(String[] filterParams) {
        HashMap<String, Object> filterData = new HashMap<>(filterParams.length);

        for (String filterParam : filterParams) {
            String[] paramSplit = filterParam.split("-");
            String key = paramSplit[0];
            Object value = getCorrectValue(key, paramSplit[1]);
            filterData.put(key, value);
        }

        return filterData;
    }

    public Sort buildSort(String[] sortArr) {
        if (sortArr == null || sortArr.length == 0 || sortArr[0].equalsIgnoreCase("unsorted")) {
            return Sort.UNSORTED;
        }

        Sort next = null;
        for (int i = sortArr.length - 1; i >= 0; i--) {
            String sortBy = sortArr[i];
            if (!sortBy.contains(",")) {
                throw new IllegalArgumentException("Sort query param value must be formed as: <property>,<asc/desc>");
            }

            String[] sortBySplit = sortBy.split(",");
            Sort sort = new Sort(sortBySplit[0], Order.fromString(sortBySplit[1]), next);
            next = sort;
        }

        return next;
    }

    private Object getCorrectValue(String key, String value) {
        if (key.startsWith("issuedAt") || key.startsWith("purchased")) {
            return Instant
                    .ofEpochMilli(Long.parseLong(value))
                    .atZone(ZoneId.systemDefault())
                    .toLocalDateTime();
        }

        if (key.endsWith("Start") || key.endsWith("End")) {
            return Float.parseFloat(value);
        }

        return value;
    }
}
