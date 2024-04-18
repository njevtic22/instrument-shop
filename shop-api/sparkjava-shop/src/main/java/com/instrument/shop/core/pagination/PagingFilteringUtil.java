package com.instrument.shop.core.pagination;

import jakarta.inject.Singleton;
import spark.Request;

import java.util.HashMap;
import java.util.Map;

@Singleton
public class PagingFilteringUtil {
    public Map<String, String> buildFilterData(String[] filterParams) {
        HashMap<String, String> filterData = new HashMap<>(filterParams.length);

        for (String filterParam : filterParams) {
            String[] paramSplit = filterParam.split("-");
            filterData.put(paramSplit[0], paramSplit[1]);
        }

        return filterData;
    }

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
        return buildSort(request.queryParams("sort"));
    }

    public Sort buildSort(String sort) {
        if (sort == null || sort.isBlank() || sort.equalsIgnoreCase("unsorted")) {
            return Sort.UNSORTED;
        }

        if (!sort.contains(",")) {
            throw new IllegalArgumentException("Sort query param value must be formed as: <property>,<asc/desc>");
        }

        String[] sortSplit = sort.split(",");
        return new Sort(sortSplit[0], Order.fromString(sortSplit[1]));
    }

    public Sort buildSortValues(Request request) {
        return buildSort(request.queryParamsValues("sort"));
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

    public PageRequest buildPageRequest(Request request) {
        String page = request.queryParams("page") != null ? request.queryParams("page") : "0";
        String size = request.queryParams("size") != null ? request.queryParams("size") : "20";
        return new PageRequest(page, size);
    }
}
