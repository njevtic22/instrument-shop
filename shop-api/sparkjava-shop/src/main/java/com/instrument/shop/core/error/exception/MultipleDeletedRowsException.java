package com.instrument.shop.core.error.exception;

public class MultipleDeletedRowsException extends RuntimeException {
    public MultipleDeletedRowsException(String tableName) {
        super("Zero or more than one rows in " + tableName + " table is affected by delete (by id) operation.");
    }
}

