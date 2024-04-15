package com.sparkjava.context.core;

import com.sparkjava.context.annotation.Multipart;
import com.sparkjava.context.annotation.MultipartText;
import com.sparkjava.context.annotation.MultipartTextValues;
import com.sparkjava.context.annotation.MultipartValues;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestHeader;
import com.sparkjava.context.exception.BadRequestException;
import com.sparkjava.context.exception.InternalServerException;
import com.sparkjava.context.util.StringParser;
import spark.Request;
import spark.Response;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletException;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

public abstract class ArgumentsParser {
    private final RequestTransformer bodyTransformer;

    private final StringParser parser = new StringParser();

    public ArgumentsParser(RequestTransformer bodyTransformer) {
        this.bodyTransformer = bodyTransformer;
    }

    protected List<Object> parseArgs(Parameter[] parameters, Request request, Response response) throws Exception {
        return parseArgs(parameters, null, request, response);
    }

    protected List<Object> parseArgs(Parameter[] parameters, Throwable ex, Request request, Response response) throws Exception {
        ArrayList<Object> params = new ArrayList<>(parameters.length);

        for (Parameter parameter : parameters) {
            Class<?> paramType = parameter.getType();

            if (paramType.isInstance(ex)) {
                params.add(ex);
            } else if (paramType.isInstance(request)) {
                params.add(request);
            } else if (paramType.isInstance(response)) {
                params.add(response);

            } else if (parameter.isAnnotationPresent(PathParam.class)) {
                PathParam pp = parameter.getAnnotation(PathParam.class);
                params.add(parsePathParam(pp, request, paramType));

            } else if (parameter.isAnnotationPresent(QueryParam.class)) {
                QueryParam qp = parameter.getAnnotation(QueryParam.class);
                params.add(parseQueryParam(qp, request, paramType));

            } else if (parameter.isAnnotationPresent(QueryParamValues.class)) {
                QueryParamValues qpv = parameter.getAnnotation(QueryParamValues.class);
                params.add(parseQueryParamValues(qpv, request, paramType));

            } else if (parameter.isAnnotationPresent(RequestHeader.class)) {
                RequestHeader rh = parameter.getAnnotation(RequestHeader.class);
                params.add(parseRequestHeader(rh, request, paramType));

            } else if (parameter.isAnnotationPresent(RequestBody.class)) {
                RequestBody rb = parameter.getAnnotation(RequestBody.class);
                params.add(parseRequestBody(rb, request, paramType));

            } else if (parameter.isAnnotationPresent(Multipart.class)) {
                Multipart mp = parameter.getAnnotation(Multipart.class);
                params.add(parseMultipart(mp, request));

            } else if (parameter.isAnnotationPresent(MultipartValues.class)) {
                MultipartValues mpv = parameter.getAnnotation(MultipartValues.class);
                params.add(parseMultipartValues(mpv, request));

            } else if (parameter.isAnnotationPresent(MultipartText.class)) {
                MultipartText mpt = parameter.getAnnotation(MultipartText.class);
                params.add(parseMultipartText(mpt, request));

            } else if (parameter.isAnnotationPresent(MultipartTextValues.class)) {
                MultipartTextValues mptv = parameter.getAnnotation(MultipartTextValues.class);
                params.add(parseMultipartTextValues(mptv, request));

            } else {
                throw new InternalServerException(new IllegalArgumentException("Unsupported argument type: " + paramType));
            }
        }

        return params;
    }

    private Object parsePathParam(PathParam pp, Request request, Class<?> paramType) {
        String paramValue = pp.value().startsWith(":") ? request.params(pp.value()) : request.params(":" + pp.value());
        if (paramValue == null) {
            if (pp.required()) {
                throw new BadRequestException(new IllegalArgumentException("Required path param '" + pp.value() + "' is not present"));
            }

            return null;
        }
        return parser.parse(paramValue, paramType);
    }

    private Object parseQueryParam(QueryParam qp, Request request, Class<?> paramType) {
        String queryValue = request.queryParams(qp.value());
        if (queryValue == null) {
            queryValue = qp.defaultValue();
        }

        if (queryValue.isEmpty() && qp.required()) {
            throw new BadRequestException(new IllegalArgumentException("Required query param '" + qp.value() + "' is not present"));
        }

        return parser.parse(queryValue, paramType);
    }

    private Object parseQueryParamValues(QueryParamValues qpv, Request request, Class<?> paramType) {
        String[] queryValues = request.queryParamsValues(qpv.value());
        if (queryValues == null) {
            queryValues = qpv.defaultValue();
        }

        if (queryValues.length == 0 && qpv.required()) {
            throw new BadRequestException(new IllegalArgumentException("Required query param '" + qpv.value() + "' is not present"));
        }

        Object[] parsedQueries = getArray(paramType, queryValues.length);
        for (int i = 0; i < queryValues.length; i++) {
            parsedQueries[i] = parser.parse(queryValues[i].strip(), paramType.componentType());
        }

        Object finalQueries = parsedQueries;
        if (paramType.equals(int[].class)) {
            finalQueries = Arrays.stream(parsedQueries).mapToInt(i -> (Integer) i).toArray();
        } else if (paramType.equals(long[].class)) {
            finalQueries = Arrays.stream(parsedQueries).mapToLong(l -> (Long) l).toArray();
        }

        return finalQueries;
    }

    private Object parseRequestHeader(RequestHeader rh, Request request, Class<?> paramType) {
        String header = request.headers(rh.value());
        if (header == null) {
            header = rh.defaultValue();
        }

        if (header.isEmpty() && rh.required()) {
            throw new BadRequestException(new IllegalArgumentException("Required header '" + rh.value() + "' is not present"));
        }

        return parser.parse(header, paramType);
    }

    private Object parseRequestBody(RequestBody rb, Request request, Class<?> paramType) throws Exception {
        String body = request.body();
        if (body.isBlank() && rb.required()) {
            throw new BadRequestException(new IllegalArgumentException("Required request body is not present"));
        }

        if (paramType.isAssignableFrom(String.class)) {
            return body;
        }

        return bodyTransformer.parse(body, paramType);
    }

    private Object parseMultipart(Multipart mp, Request request) throws ServletException, IOException {
        MultipartConfigElement mpConfig = new MultipartConfigElement(
                mp.location(),
                mp.maxFileSize(),
                mp.maxRequestSize(),
                mp.fileSizeThreshold()
        );
        request.attribute("org.eclipse.jetty.multipartConfig", mpConfig);

        Part part = request.raw().getPart(mp.value());
        if (part == null && mp.required()) {
            throw new BadRequestException(new IllegalArgumentException("Required multipart with key: " + mp.value() + " is not present"));
        }

        return part;
    }

    private Object parseMultipartValues(MultipartValues mpv, Request request) throws ServletException, IOException {
        MultipartConfigElement mpConfig = new MultipartConfigElement(
                mpv.location(),
                mpv.maxFileSize(),
                mpv.maxRequestSize(),
                mpv.fileSizeThreshold()
        );
        request.attribute("org.eclipse.jetty.multipartConfig", mpConfig);

        ArrayList<Part> allParts = new ArrayList<>(request.raw().getParts());
        if (mpv.value().length == 0) {
            if (allParts.isEmpty() && mpv.requiredNonEmpty()) {
                throw new BadRequestException(new IllegalArgumentException("Required multipart with at least one of keys: " + Arrays.toString(mpv.value()) + " is not present"));
            }

            return allParts;
        }

        HashSet<String> requiredParts = new HashSet<>(List.of(mpv.value()));
        ArrayList<Part> filteredParts = allParts.stream().filter(part -> requiredParts.contains(part.getName())).collect(Collectors.toCollection(ArrayList::new));

        if (filteredParts.isEmpty() && mpv.requiredNonEmpty()) {
            throw new BadRequestException(new IllegalArgumentException("Required multipart with at least one of keys: " + Arrays.toString(mpv.value()) + " is not present"));
        }

        return filteredParts;
    }

    private Object parseMultipartText(MultipartText mpt, Request request) throws ServletException, IOException {
        MultipartConfigElement mpConfig = new MultipartConfigElement(mpt.location());
        request.attribute("org.eclipse.jetty.multipartConfig", mpConfig);

        Part part = request.raw().getPart(mpt.value());
        if (part == null) {
            if (mpt.defaultValue().isEmpty() && mpt.required()) {
                throw new BadRequestException(new IllegalArgumentException("Required multipart with key: " + mpt.value() + " is not present"));
            }

            return mpt.defaultValue();
        }

        return inputStreamToString(part.getInputStream());
    }

    private Object parseMultipartTextValues(MultipartTextValues mptv, Request request) throws ServletException, IOException {
        MultipartConfigElement mpConfig = new MultipartConfigElement(mptv.location());
        request.attribute("org.eclipse.jetty.multipartConfig", mpConfig);

        ArrayList<Part> allParts = new ArrayList<>(request.raw().getParts());
        if (mptv.value().length == 0) {
            return readPartAsText(mptv, allParts);
        }

        HashSet<String> requiredParts = new HashSet<>(List.of(mptv.value()));
        ArrayList<Part> filteredParts = allParts.stream().filter(part -> requiredParts.contains(part.getName())).collect(Collectors.toCollection(ArrayList::new));

        return readPartAsText(mptv, filteredParts);
    }

    private Object readPartAsText(MultipartTextValues mptv, ArrayList<Part> allParts) {
        if (allParts.isEmpty()) {
            if (mptv.defaultValues().length == 0 && mptv.requiredNonEmpty()) {
                throw new BadRequestException(new IllegalArgumentException("Required multipart with at least one of keys: " + Arrays.toString(mptv.value()) + " is not present"));
            }

            return new ArrayList<>(Arrays.asList(mptv.defaultValues()));
        }

        return allParts.stream()
                .map(part -> {
                    try {
                        return inputStreamToString(part.getInputStream());
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                })
                .collect(Collectors.toCollection(ArrayList::new));
    }

    private String inputStreamToString(InputStream in) {
        Scanner sc = new Scanner(in).useDelimiter("\\A");
        String text = sc.hasNext() ? sc.next() : "";
        sc.close();

        return text;
    }

    private Object[] getArray(Class<?> type, int length) {
        if (type.equals(int[].class) || type.equals(Integer[].class)) {
            return new Integer[length];
        } else if (type.equals(long[].class) || type.equals(Long[].class)) {
            return new Long[length];
        } else if (type.equals(String[].class)) {
            return new String[length];
        } else {
            throw new InternalServerException(new IllegalArgumentException("Unsupported argument type: " + type));
        }
    }
}
