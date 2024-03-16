package com.sparkjava.context.util;

import com.sparkjava.context.exception.InternalServerException;

import java.util.Map;
import java.util.function.Function;

public class StringParser {
    private static final Map<Class<?>, Function<String, ?>> parsers = Map.of(
            int.class,     Integer::parseInt,
            long.class,    Long::parseLong,
            Integer.class, Integer::valueOf,
            Long.class,    Long::valueOf,
            String.class,  String::valueOf
    );

    public Object parse(String arg, Class<?> desiredType) {
        Function<String, ?> parser = parsers.get(desiredType);
        if (parser == null) {
            throw new InternalServerException(new UnsupportedOperationException("Can not parse String to " + desiredType.getName()));
        }

        return parser.apply(arg);
    }
}
