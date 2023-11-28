package com.instrument.shop.core.pagination;

import jakarta.inject.Singleton;
import spark.Request;

import java.util.HashMap;
import java.util.Map;

@Singleton
public class PagingFilteringUtil {
    public Map<String, String> buildFilterData(Request request, String... filterKeys) {
        HashMap<String, String> filterData = new HashMap<>(filterKeys.length);

        for (String filterKey : filterKeys) {
            String filterValue = request.queryParams(filterKey);
            if (filterValue != null) {
                filterData.put(filterKey, filterValue);
            }
        }

        return filterData;
    }

    public Sort buildSort(Request request) {
        String querySort = request.queryParams("sort");
        if (querySort == null) {
            return Sort.UNSORTED;
        }

        if (!querySort.contains(",")) {
            throw new IllegalArgumentException("Sort query param value must be formed as: <property>,<asc/desc>");
        }

        String[] sortSplit = querySort.split(",");
        return new Sort(sortSplit[0], Order.fromString(sortSplit[1]));
    }

    public PageRequest buildPageRequest(Request request) {
        String page = request.queryParams("page") != null ? request.queryParams("page") : "0";
        String size = request.queryParams("size") != null ? request.queryParams("size") : "20";
        return new PageRequest(page, size);
    }
}
