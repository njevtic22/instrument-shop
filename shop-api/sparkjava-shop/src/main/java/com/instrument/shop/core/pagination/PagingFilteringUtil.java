package com.instrument.shop.core.pagination;

import jakarta.inject.Singleton;

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
}
