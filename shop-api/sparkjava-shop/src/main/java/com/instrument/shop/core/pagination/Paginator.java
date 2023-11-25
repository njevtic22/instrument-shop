package com.instrument.shop.core.pagination;

import jakarta.inject.Singleton;

import java.util.List;

@Singleton
public class Paginator {
    public <T> PaginatedResponse<T> paginate(List<T> elements, PageRequest pageRequest) {
        int page = pageRequest.getPage();
        int size = pageRequest.getSize();

        int from = page * size;
        int to = Math.min((page + 1) * size, elements.size());

        List<T> sublist = from > to ? List.of() : List.copyOf(elements.subList(from, to));

        return new PaginatedResponse<>(
                sublist,
                elements.size(),
                Math.ceilDiv(elements.size(), size)
        );
    }
}
