package com.instrument.shop.logging;

import org.aopalliance.intercept.MethodInvocation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AspectLogger {
    private final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    public Object logRuntimeException(MethodInvocation invocation) throws Throwable {
        RuntimeException ex = (RuntimeException) invocation.getArguments()[0];
        logger.info(ex.getMessage(), ex);
        return invocation.proceed();
    }

    public Object logInternalServerException(MethodInvocation invocation) throws Throwable {
        Exception ex = (Exception) invocation.getArguments()[0];
        logger.error(ex.getMessage(), ex);
        return invocation.proceed();
    }
}
