package com.sparkjava.context.core;

import com.sparkjava.context.annotation.MethodOrder;

import java.lang.reflect.Method;
import java.util.Comparator;

public class MethodOrderComparator implements Comparator<Method> {
    @Override
    public int compare(Method m1, Method m2) {
        MethodOrder methodOrder1 = m1.getAnnotation(MethodOrder.class);
        MethodOrder methodOrder2 = m2.getAnnotation(MethodOrder.class);

        int comparingResult = 0;
        if (methodOrder1 == null && methodOrder2 == null) {
            comparingResult = 0;
        } else if (methodOrder1 == null) {
            comparingResult = -1;
        } else if (methodOrder2 == null) {
            comparingResult = 1;
        } else {
            comparingResult = Integer.compare(methodOrder1.value(), methodOrder2.value());
        }
        return -comparingResult;
    }
}
