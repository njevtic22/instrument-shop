package com.instrument.shop.core.pagination;

import java.util.List;

public record PaginatedResponse<T>(List<T> data, long totalElements, long totalPages) {
}
