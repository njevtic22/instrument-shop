package com.sparkjava.context;

import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.annotation.ResponseStatus;
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
import java.util.List;

public class SparkJavaContext {
    private static final Logger logger = LoggerFactory.getLogger(SparkJavaContext.class.getName());

    private static final List<Class<? extends Annotation>> endpointMappings = List.of(
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

            Method[] methods = controllerClass.getDeclaredMethods();
            Arrays.sort(methods, (m1, m2) -> {
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
            });
            for (Method method : methods) {
                List<Annotation> endpointMappings = getEndpointMappings(method);
                for (Annotation endpointMapping : endpointMappings) {
                    mapRouteToMethod(controller, controllerMapping, method, endpointMapping);
                }
            }
        }
    }

    private static void mapRouteToMethod(Object controller, RequestMapping controllerMapping, Method mappedMethod, Annotation endpointMapping) {
        String sparkMethodName = null;
        String methodPath = null;
        String consumes = !controllerMapping.consumes().isBlank() ? controllerMapping.consumes() : "application/json;charset=UTF-8";
        String produces = !controllerMapping.produces().isBlank() ? controllerMapping.produces() : "application/json;charset=UTF-8";

        switch (endpointMapping.annotationType().getSimpleName()) {
            case "GetMapping" -> {
                GetMapping getMapping = (GetMapping) endpointMapping;
                methodPath = controllerMapping.value() + getMapping.value();
                sparkMethodName = "get";
                if (!getMapping.consumes().isBlank()) {
                    consumes = getMapping.consumes();
                }
                if (!getMapping.produces().isBlank()) {
                    produces = getMapping.produces();
                }
            }
            case "PostMapping" -> {
                PostMapping postMapping = (PostMapping) endpointMapping;
                methodPath = controllerMapping.value() + postMapping.value();
                sparkMethodName = "post";
                if (!postMapping.consumes().isBlank()) {
                    consumes = postMapping.consumes();
                }
                if (!postMapping.produces().isBlank()) {
                    produces = postMapping.produces();
                }
            }
            case "PutMapping" -> {
                PutMapping putMapping = (PutMapping) endpointMapping;
                methodPath = controllerMapping.value() + putMapping.value();
                sparkMethodName = "put";
                if (!putMapping.consumes().isBlank()) {
                    consumes = putMapping.consumes();
                }
                if (!putMapping.produces().isBlank()) {
                    produces = putMapping.produces();
                }
            }
            case "DeleteMapping" -> {
                DeleteMapping deleteMapping = (DeleteMapping) endpointMapping;
                methodPath = controllerMapping.value() + deleteMapping.value();
                sparkMethodName = "delete";
                if (!deleteMapping.consumes().isBlank()) {
                    consumes = deleteMapping.consumes();
                }
                if (!deleteMapping.produces().isBlank()) {
                    produces = deleteMapping.produces();
                }
            }
        }

        int status = 0;
        if (mappedMethod.isAnnotationPresent(ResponseStatus.class)) {
            ResponseStatus responseStatus = mappedMethod.getAnnotation(ResponseStatus.class);
            status = responseStatus.value();
        }

        final int finalStatus = status;
        final String finalProduces = produces;
        Route route = (Request request, Response response) -> {
            response.type(finalProduces);
            if (finalStatus != 0) {
                response.status(finalStatus);
            }
            return mappedMethod.invoke(controller, request, response);
        };

        try {
            Method sparkMethod = Spark.class.getMethod(sparkMethodName, String.class, String.class, Route.class);
            sparkMethod.invoke(null, methodPath, consumes, route);
            logger.info("Created endpoint: {} {} on method {}", String.format("%6S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            logger.info("Could not create endpoint: {} {} on method {}", String.format("%6S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
            throw new RuntimeException(e);
        }
    }

    private static List<Annotation> getEndpointMappings(Method method) {
        ArrayList<Annotation> endpointAnnotations = new ArrayList<>();

        for (Annotation annotation : method.getAnnotations()) {
            if (endpointMappings.contains(annotation.annotationType())) {
                endpointAnnotations.add(annotation);
            }
        }

        return endpointAnnotations;
    }
}
