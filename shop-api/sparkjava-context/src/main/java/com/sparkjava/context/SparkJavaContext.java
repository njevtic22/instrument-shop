package com.sparkjava.context;

import com.sparkjava.context.annotation.AfterAfterMapping;
import com.sparkjava.context.annotation.AfterMapping;
import com.sparkjava.context.annotation.BeforeMapping;
import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.ExceptionHandler;
import com.sparkjava.context.annotation.Exceptions;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.annotation.ResponseStatus;
import com.sparkjava.context.core.ContextFilter;
import com.sparkjava.context.core.ContextRoute;
import com.sparkjava.context.core.MethodOrderComparator;
import com.sparkjava.context.exception.MissingAnnotationException;
import com.sparkjava.context.exception.handler.InvocationTargetExceptionHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Filter;
import spark.Route;
import spark.Spark;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class SparkJavaContext {
    private final Logger logger = LoggerFactory.getLogger(SparkJavaContext.class.getName());

    private final List<Class<? extends Annotation>> endpointMappings = List.of(
            GetMapping.class,
            PostMapping.class,
            PutMapping.class,
            DeleteMapping.class
    );

    private final List<Class<? extends Annotation>> filterMappings = List.of(
            AfterMapping.class,
            AfterAfterMapping.class,
            BeforeMapping.class
    );

    public SparkJavaContext(int port) {
        Spark.port(port);
    }

    public void createEndpoints(Object... controllers) {
        for (Object controller : controllers) {
            Class<?> controllerClass = controller.getClass();

            if (!controllerClass.isAnnotationPresent(RequestMapping.class)) {
                throw new MissingAnnotationException(RequestMapping.class.getSimpleName(), controllerClass.getSimpleName());
            }

            RequestMapping controllerMapping = controllerClass.getAnnotation(RequestMapping.class);

            Method[] methods = controllerClass.getDeclaredMethods();
            Arrays.sort(methods, new MethodOrderComparator());
            for (Method method : methods) {
                List<Annotation> filterMappings = getMappings(method, this.filterMappings);
                for (Annotation filterMapping : filterMappings) {
                    mapFilterToMethod(controller, controllerMapping, method, filterMapping);
                }

                List<Annotation> endpointMappings = getMappings(method, this.endpointMappings);
                for (Annotation endpointMapping : endpointMappings) {
                    mapRouteToMethod(controller, controllerMapping, method, endpointMapping);
                }
            }
        }
    }

    private void mapRouteToMethod(Object controller, RequestMapping controllerMapping, Method mappedMethod, Annotation endpointMapping) {
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

        int status = 200;
        if (mappedMethod.isAnnotationPresent(ResponseStatus.class)) {
            ResponseStatus responseStatus = mappedMethod.getAnnotation(ResponseStatus.class);
            status = responseStatus.value();
        }

        Route route = new ContextRoute(status, produces, mappedMethod, controller);

        try {
            Method sparkMethod = Spark.class.getMethod(sparkMethodName, String.class, String.class, Route.class);
            sparkMethod.invoke(null, methodPath, consumes, route);
            logger.info("Created endpoint: {} {} on method {}", String.format("%10S", sparkMethodName), String.format("%-15s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            logger.info("Could not create endpoint: {} {} on method {}", String.format("%10S", sparkMethodName), String.format("%-15s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
            throw new RuntimeException(e);
        }
    }

    private void mapFilterToMethod(Object controller, RequestMapping controllerMapping, Method mappedMethod, Annotation filterMapping) {
        String sparkMethodName = null;
        String methodPath = null;

        switch (filterMapping.annotationType().getSimpleName()) {
            case "BeforeMapping" -> {
                BeforeMapping beforeMapping = (BeforeMapping) filterMapping;
                methodPath = controllerMapping.value() + beforeMapping.value();
                sparkMethodName = "before";
            }
            case "AfterMapping" -> {
                AfterMapping afterMapping = (AfterMapping) filterMapping;
                methodPath = controllerMapping.value() + afterMapping.value();
                sparkMethodName = "after";
            }
            case "AfterAfterMapping" -> {
                AfterAfterMapping afterAfterMapping = (AfterAfterMapping) filterMapping;
                methodPath = controllerMapping.value() + afterAfterMapping.value();
                sparkMethodName = "afterAfter";
            }
        }

        Filter filter = new ContextFilter(mappedMethod, controller);

        try {
            Method sparkMethod = Spark.class.getMethod(sparkMethodName, String.class, Filter.class);
            sparkMethod.invoke(null, methodPath, filter);
            logger.info("Created filter: {} {} on method {}", String.format("%12S", sparkMethodName), String.format("%-15s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            logger.info("Could not create filter: {} {} on method {}", String.format("%12S", sparkMethodName), String.format("%-15s", methodPath), controller.getClass().getSimpleName() + "." + mappedMethod.getName() + "(" + mappedMethod.getParameterTypes()[0].getSimpleName() + ", " + mappedMethod.getParameterTypes()[1].getSimpleName() + ")");
            throw new RuntimeException(e);
        }
    }

    public void registerExceptionHandler(Object exceptionHandler) {
        // TODO: fix .getSuperclass()
        Class<?> exceptionHandlerClass = exceptionHandler.getClass().getSuperclass();
        if (!exceptionHandlerClass.isAnnotationPresent(ExceptionHandler.class)) {
            throw new MissingAnnotationException(ExceptionHandler.class.getSimpleName(), exceptionHandlerClass.getSimpleName());
        }

        HashMap<Class<? extends Exception>, Method> handlers = new HashMap<>();

        Method[] methodHandlers = exceptionHandlerClass.getDeclaredMethods();
        for (Method methodHandler : methodHandlers) {
            if (methodHandler.isAnnotationPresent(Exceptions.class)) {
                Class<? extends Exception>[] exceptionClasses = methodHandler.getAnnotation(Exceptions.class).value();
                for (Class<? extends Exception> exceptionClass : exceptionClasses) {
                    handlers.put(exceptionClass, methodHandler);
                }
                logger.info("Registered exception handler: {}.{}({})", exceptionHandlerClass.getSimpleName(), methodHandler.getName(), String.join(", ", Arrays.stream(methodHandler.getParameterTypes()).map(Class::getSimpleName).toList()));
            }
        }

        Spark.exception(InvocationTargetException.class, new InvocationTargetExceptionHandler(exceptionHandler, handlers));
    }

    private List<Annotation> getMappings(Method method, List<Class<? extends Annotation>> mappings) {
        ArrayList<Annotation> endpointAnnotations = new ArrayList<>();

        for (Annotation annotation : method.getAnnotations()) {
            if (mappings.contains(annotation.annotationType())) {
                endpointAnnotations.add(annotation);
            }
        }

        return endpointAnnotations;
    }
}
