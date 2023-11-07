package com.sparkjava.context;

import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.exceptions.MissingAnnotationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Request;
import spark.Response;
import spark.Route;
import spark.Spark;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class SparkJavaContext {
    private static final Logger logger = LoggerFactory.getLogger(SparkJavaContext.class.getName());

    private static final List<Class<? extends Annotation>> mappingAnnotations = List.of(
            GetMapping.class,
            PostMapping.class,
            PutMapping.class,
            DeleteMapping.class
    );

    public static void init(int port, Object... controllers) {
        Spark.port(port);

        for (Object controller : controllers) {
            Class<?> controllerClass = controller.getClass();

            if (!controllerClass.isAnnotationPresent(RequestMapping.class)) {
                throw new MissingAnnotationException(RequestMapping.class.getSimpleName(), controllerClass.getSimpleName());
            }


            RequestMapping controllerMapping = controllerClass.getAnnotation(RequestMapping.class);
            Method[] methods = controllerClass.getMethods();
//            Arrays.sort(methods, Comparator.comparing(Method::getName));
            for (Method method : methods) {
                List<Annotation> methodMappings = getMethodMappings(method);
                methodMappings.sort(Comparator.comparing(a -> a.annotationType().getSimpleName()));
                if (!methodMappings.isEmpty()) {
                    mapRoutesToMethod(controller, controllerMapping, method, methodMappings);
                }
            }

        }
    }

    private static void mapRoutesToMethod(Object controller, RequestMapping controllerMapping, Method mappedMethod, List<Annotation> methodMappings) {
        String sparkMethodName = null;
        String methodPath = null;

        for (Annotation methodMapping : methodMappings) {
            switch (methodMapping.annotationType().getSimpleName()) {
                case "GetMapping":
                    GetMapping getMapping = (GetMapping) methodMapping;
                    methodPath = controllerMapping.value() + getMapping.value();
                    sparkMethodName = "get";
                    break;
                case "PostMapping":
                    PostMapping postMapping = (PostMapping) methodMapping;
                    methodPath = controllerMapping.value() + postMapping.value();
                    sparkMethodName = "post";
                    break;
                case "PutMapping":
                    PutMapping putMapping = (PutMapping) methodMapping;
                    methodPath = controllerMapping.value() + putMapping.value();
                    sparkMethodName = "put";
                    break;
                case "DeleteMapping":
                    DeleteMapping deleteMapping = (DeleteMapping) methodMapping;
                    methodPath = controllerMapping.value() + deleteMapping.value();
                    sparkMethodName = "delete";
                    break;
            }

            Route route = (Request request, Response response) -> mappedMethod.invoke(controller, request, response);

            try {
                Method sparkMethod = Spark.class.getMethod(sparkMethodName, String.class, Route.class);
                sparkMethod.invoke(null, methodPath, route);
                logger.info("Created endpoint: {} {} on method {}", String.format("%6S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
            } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
                logger.info("Could not create endpoint: {} {} on method {}", String.format("%6S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
                throw new RuntimeException(e);
            }
        }
    }

    private static List<Annotation> getMethodMappings(Method method) {
        ArrayList<Annotation> methodMappings = new ArrayList<>();

        for (Annotation annotation : method.getAnnotations()) {
            if (mappingAnnotations.contains(annotation.annotationType())) {
                methodMappings.add(annotation);
            }
        }

        return methodMappings;
    }
}
