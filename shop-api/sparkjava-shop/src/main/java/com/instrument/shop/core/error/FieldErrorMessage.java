package com.instrument.shop.core.error;

import java.util.List;

public record FieldErrorMessage(String field, List<String> messages) {
}
