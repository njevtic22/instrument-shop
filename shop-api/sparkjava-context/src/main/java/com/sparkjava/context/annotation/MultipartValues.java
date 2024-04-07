package com.sparkjava.context.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.PARAMETER)
public @interface MultipartValues {
    String[] value() default {};

    // location where spark-java-context will store files
    String location() default "/spark-context-temp";

    // the maximum size allowed for uploaded files
    long maxFileSize() default 10 * 1024 * 1024;

    // the maximum size allowed for multipart/form-data requests
    long maxRequestSize() default 100 * 1024 * 1024;

    // the size threshold after which files will be written to disk
    int fileSizeThreshold() default 5 * 1024;
}
