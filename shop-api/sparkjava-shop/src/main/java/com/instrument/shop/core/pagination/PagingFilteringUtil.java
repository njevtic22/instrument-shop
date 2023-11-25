package com.instrument.shop.core.pagination;

import jakarta.inject.Singleton;
import spark.Request;

@Singleton
public class PagingFilteringUtil {
    public Sort buildSort(Request request) {
        String querySort = request.queryParams("sort");
        if (querySort == null) {
            return Sort.UNSORTED;
        }

        if (querySort.contains(",")) {
            String[] sortSplit = querySort.split(",");
            return new Sort(sortSplit[0], Order.fromString(sortSplit[1]));
        } else {
            throw new IllegalArgumentException("Sort query param value must be formed as: <property>,<asc/desc>");
        }
    }

    public PageRequest buildPageRequest(Request request) {
        String page = request.queryParams("page") != null ? request.queryParams("page") : "0";
        String size = request.queryParams("size") != null ? request.queryParams("size") : "20";
        return new PageRequest(page, size);
    }
}
