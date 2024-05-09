package com.instrument.shop.faker;

public class FakerUtil {
    public static String escapeApostrophe(String str) {
        return str.replaceAll("'", "''");
    }
}
