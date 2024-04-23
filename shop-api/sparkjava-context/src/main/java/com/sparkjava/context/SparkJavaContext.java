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
import com.sparkjava.context.core.Authenticator;
import com.sparkjava.context.core.Authorizer;
import com.sparkjava.context.core.ContextFilter;
import com.sparkjava.context.core.ContextRoute;
import com.sparkjava.context.core.MethodOrderComparator;
import com.sparkjava.context.core.RequestTransformer;
import com.sparkjava.context.core.RolesGetter;
import com.sparkjava.context.core.Validator;
import com.sparkjava.context.exception.BadRequestException;
import com.sparkjava.context.exception.ForbiddenException;
import com.sparkjava.context.exception.InternalServerException;
import com.sparkjava.context.exception.MissingAnnotationException;
import com.sparkjava.context.exception.handler.BadRequestExceptionHandler;
import com.sparkjava.context.exception.handler.ContextExceptionHandler;
import com.sparkjava.context.exception.handler.ForbiddenExceptionHandler;
import com.sparkjava.context.exception.handler.InternalServerExceptionHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Filter;
import spark.ResponseTransformer;
import spark.Route;
import spark.Spark;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Stream;

public class SparkJavaContext {
    private final Logger logger = LoggerFactory.getLogger(SparkJavaContext.class.getName());

    private final Set<Class<? extends Annotation>> endpointMappings = Set.of(
            GetMapping.class,
            PostMapping.class,
            PutMapping.class,
            DeleteMapping.class
    );

    private final Set<Class<? extends Annotation>> filterMappings = Set.of(
            AfterMapping.class,
            AfterAfterMapping.class,
            BeforeMapping.class
    );

    private final String contentType;
    private final RequestTransformer reqTransformer;
    private final ResponseTransformer resTransformer;
    private final Validator validator;

    private boolean endpointsCreated = false;

    private Authenticator authenticator;
    private Authorizer authorizer;


    public SparkJavaContext(int port) {
        this(port, "*/*", (body, modelClass) -> body, Object::toString);
    }

    public SparkJavaContext(int port, String contentType, RequestTransformer reqTransformer, ResponseTransformer resTransformer) {
        this(port, contentType, reqTransformer, resTransformer, toValidate -> {});
    }

    public SparkJavaContext(
            int port,
            String contentType,
            RequestTransformer reqTransformer,
            ResponseTransformer resTransformer,
            Validator validator
    ) {
        this.contentType = contentType;
        this.reqTransformer = reqTransformer;
        this.resTransformer = resTransformer;
        this.validator = validator;

        Spark.port(port);
    }

    public void createEndpoints(Object... controllers) {
        endpointsCreated = true;

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
        String consumes = !controllerMapping.consumes().isBlank() ? controllerMapping.consumes() : contentType;
        String produces = !controllerMapping.produces().isBlank() ? controllerMapping.produces() : contentType;

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

        int status = Optional.ofNullable(mappedMethod.getAnnotation(ResponseStatus.class))
                .map(ResponseStatus::value)
                .orElse(200);

        Route route = new ContextRoute(status, produces, mappedMethod, controller, reqTransformer, resTransformer, validator, authenticator, authorizer);

        try {
            Method sparkMethod = Spark.class.getMethod(sparkMethodName, String.class, String.class, Route.class);
            sparkMethod.invoke(null, methodPath, consumes, route);
            logger.info("Created endpoint: {} {} on method {}.{}({})", String.format("%10S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName(), mappedMethod.getName(), String.join(", ", getParameterTypeNames(mappedMethod)));
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            logger.info("Could not create endpoint: {} {} on method {}.{}({})", String.format("%10S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName(), mappedMethod.getName(), String.join(", ", getParameterTypeNames(mappedMethod)));
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

        Filter filter = new ContextFilter(mappedMethod, controller, reqTransformer, validator, authenticator);

        try {
            Method sparkMethod = Spark.class.getMethod(sparkMethodName, String.class, Filter.class);
            sparkMethod.invoke(null, methodPath, filter);
            logger.info("Created filter: {} {} on method {}.{}({})", String.format("%12S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName(), mappedMethod.getName(), String.join(", ", getParameterTypeNames(mappedMethod)));
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            logger.info("Could not create filter: {} {} on method {}.{}({})", String.format("%12S", sparkMethodName), String.format("%-30s", methodPath), controller.getClass().getSimpleName(), mappedMethod.getName(), String.join(", ", getParameterTypeNames(mappedMethod)));
            throw new RuntimeException(e);
        }
    }

    public void registerExceptionHandler(Object objectHandler) {
        Spark.exception(BadRequestException.class, new BadRequestExceptionHandler());
        Spark.exception(ForbiddenException.class, new ForbiddenExceptionHandler());
        Spark.exception(InternalServerException.class, new InternalServerExceptionHandler());

        // TODO: fix .getSuperclass()
        Class<?> objectHandlerClass = objectHandler.getClass().getSuperclass();
        if (!objectHandlerClass.isAnnotationPresent(ExceptionHandler.class)) {
            throw new MissingAnnotationException(ExceptionHandler.class.getSimpleName(), objectHandlerClass.getSimpleName());
        }

        ExceptionHandler exceptionMapping = objectHandlerClass.getAnnotation(ExceptionHandler.class);

        Method[] methodHandlers = objectHandlerClass.getDeclaredMethods();
        for (Method methodHandler : methodHandlers) {
            if (methodHandler.isAnnotationPresent(Exceptions.class)) {
                Exceptions exceptions = methodHandler.getAnnotation(Exceptions.class);
                mapHandlerToMethod(objectHandlerClass, objectHandler, exceptionMapping, methodHandler, exceptions);
            }
        }
    }

    private void mapHandlerToMethod(Class<?> objectHandlerClass, Object objectHandler, ExceptionHandler exceptionMapping, Method methodHandler, Exceptions exceptions) {
        String produces = !exceptionMapping.produces().isBlank() ? exceptionMapping.produces() : contentType;
        if (!exceptions.produces().isBlank()) {
            produces = exceptions.produces();
        }

        Class<? extends Exception>[] exceptionClasses = exceptions.value();
        for (Class<? extends Exception> exceptionClass : exceptionClasses) {

            int status = Optional.ofNullable(methodHandler.getAnnotation(ResponseStatus.class))
                    .map(ResponseStatus::value)
                    .orElse(500);
            Spark.exception(exceptionClass,
                    new ContextExceptionHandler(status, produces, methodHandler, objectHandler, reqTransformer, resTransformer, validator, authenticator));
        }
        logger.info("Registered exception handler:\n{}\n{}.{}({})", exceptionsToString(exceptionClasses), objectHandlerClass.getSimpleName(), methodHandler.getName(), String.join(", ", getParameterTypeNames(methodHandler)));
    }

    public void setAuthenticator(Authenticator auth) {
        if (endpointsCreated) {
            throw new RuntimeException("Authenticator can not be set because endpoints are already created");
        }
        this.authenticator = auth;
    }

    public void setAuthorizer(Set<String> allRoles, RolesGetter rolesGetter) {
        if (endpointsCreated) {
            throw new RuntimeException("Authorizer can not be set because endpoints are already created");
        }
        this.authorizer = new Authorizer(allRoles, rolesGetter);
    }

    private List<Annotation> getMappings(Method method, Set<Class<? extends Annotation>> mappings) {
        ArrayList<Annotation> endpointAnnotations = new ArrayList<>();

        for (Annotation annotation : method.getAnnotations()) {
            if (mappings.contains(annotation.annotationType())) {
                endpointAnnotations.add(annotation);
            }
        }

        return endpointAnnotations;
    }

    private List<String> getParameterTypeNames(Method method) {
        return Stream.of(method.getParameterTypes())
                .map(Class::getSimpleName)
                .toList();
    }

    private String exceptionsToString(Class<? extends Exception>[] exceptions) {
        List<String> exceptionsList = Stream.of(exceptions)
                .map(e -> e.getSimpleName() + ".class")
                .toList();

        return "@Exceptions({\n\t" + String.join(",\n\t", exceptionsList) + "\n})";
    }
}
