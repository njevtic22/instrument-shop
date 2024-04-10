package com.sparkjava.context.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.PARAMETER)
public @interface MultipartTextValues {
    String[] value() default {};

    boolean requiredNonEmpty() default true;

    String[] defaultValues() default {};

    // location where spark-java-context will store files
    String location() default "/spark-context-temp";
}
