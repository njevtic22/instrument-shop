package com.sparkjava.context.annotation;

import com.sparkjava.context.core.RequestTransformer;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.PARAMETER)
public @interface RequestBody {
    boolean required() default true;

    Class<? extends RequestTransformer> parser() default RequestTransformer.class;
}
