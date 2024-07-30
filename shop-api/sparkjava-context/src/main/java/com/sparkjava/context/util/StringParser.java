package com.sparkjava.context.util;

import com.sparkjava.context.exception.InternalServerException;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

public class StringParser {
    private static final Map<Class<?>, Function<String, ?>> parsers = new HashMap<>(5);

    public StringParser() {
        parsers.put(int.class,     Integer::parseInt);
        parsers.put(long.class,    Long::parseLong);
        parsers.put(Integer.class, Integer::valueOf);
        parsers.put(Long.class,    Long::valueOf);
        parsers.put(String.class,  String::valueOf);
    }

    public Object parse(String arg, Class<?> desiredType) {
        Function<String, ?> parser = parsers.get(desiredType);
        if (parser == null) {
            throw new InternalServerException(new UnsupportedOperationException("Can not parse String to " + desiredType.getName()));
        }

        return parser.apply(arg);
    }
}
