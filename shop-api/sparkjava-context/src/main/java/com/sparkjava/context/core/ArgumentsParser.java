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
    private final StringParser parser = new StringParser();

    protected List<Object> parseArgs(Parameter[] parameters, Request request, Response response) throws ServletException, IOException {
        return parseArgs(parameters, null, request, response);
    }

    protected List<Object> parseArgs(Parameter[] parameters, Throwable ex, Request request, Response response) throws ServletException, IOException {
        ArrayList<Object> params = new ArrayList<>(parameters.length);

        for (Parameter parameter : parameters) {
            Class<?> type = parameter.getType();

            if (ex != null && type.isInstance(ex)) {
                params.add(ex);
            } else if (type.isInstance(request)) {
                params.add(request);
            } else if (type.isInstance(response)) {
                params.add(response);

            } else if (parameter.isAnnotationPresent(PathParam.class)) {
                PathParam pp = parameter.getAnnotation(PathParam.class);
                String paramValue = pp.value().startsWith(":") ? request.params(pp.value()) : request.params(":" + pp.value());
                if (paramValue == null) {
                    if (pp.required()) {
                        throw new BadRequestException(new IllegalArgumentException("Required path param '" + pp.value() + "' is not present"));
                    }

                    params.add(null);
                    continue;
                }
                params.add(parser.parse(paramValue, parameter.getType()));

            } else if (parameter.isAnnotationPresent(QueryParam.class)) {
                QueryParam qp = parameter.getAnnotation(QueryParam.class);
                String queryValue = request.queryParams(qp.value());
                if (queryValue == null) {
                    queryValue = qp.defaultValue();
                }

                if (queryValue.isEmpty() && qp.required()) {
                    throw new BadRequestException(new IllegalArgumentException("Required query param '" + qp.value() + "' is not present"));
                }

                params.add(parser.parse(queryValue, parameter.getType()));

            } else if (parameter.isAnnotationPresent(QueryParamValues.class)) {
                QueryParamValues qpv = parameter.getAnnotation(QueryParamValues.class);
                String[] queryValues = request.queryParamsValues(qpv.value());
                if (queryValues == null) {
                    queryValues = qpv.defaultValue();
                }

                if (queryValues.length == 0 && qpv.required()) {
                    throw new BadRequestException(new IllegalArgumentException("Required query param '" + qpv.value() + "' is not present"));
                }

                Object[] parsedQueries = getArray(type, queryValues.length);
                for (int i = 0; i < queryValues.length; i++) {
                    parsedQueries[i] = parser.parse(queryValues[i].strip(), type.componentType());
                }

                Object finalQueries = parsedQueries;
                if (type.equals(int[].class)) {
                    finalQueries = Arrays.stream(parsedQueries).mapToInt(i -> (Integer) i).toArray();
                } else if (type.equals(long[].class)) {
                    finalQueries = Arrays.stream(parsedQueries).mapToLong(l -> (Long) l).toArray();
                }
                params.add(finalQueries);

            } else if (parameter.isAnnotationPresent(RequestHeader.class)) {
                RequestHeader rh = parameter.getAnnotation(RequestHeader.class);
                String header = request.headers(rh.value());
                if (header == null) {
                    header = rh.defaultValue();
                }

                if (header.isEmpty() && rh.required()) {
                    throw new BadRequestException(new IllegalArgumentException("Required header '" + rh.value() + "' is not present"));
                }

                params.add(parser.parse(header, parameter.getType()));

            } else if (parameter.isAnnotationPresent(RequestBody.class)) {
                RequestBody rb = parameter.getAnnotation(RequestBody.class);
                String body = request.body();
                if (body.isBlank() && rb.required()) {
                    throw new BadRequestException(new IllegalArgumentException("Required request body is not present"));
                }

                // TODO: If param is type String
                params.add(body);

                // TODO: else if param is type Object
                // deserialize

            } else if (parameter.isAnnotationPresent(Multipart.class)) {
                Multipart mp = parameter.getAnnotation(Multipart.class);
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

                params.add(part);

            } else if (parameter.isAnnotationPresent(MultipartValues.class)) {
                MultipartValues mpv = parameter.getAnnotation(MultipartValues.class);
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

                    params.add(allParts);
                    continue;
                }

                HashSet<String> requiredParts = new HashSet<>(List.of(mpv.value()));
                ArrayList<Part> filteredParts = allParts.stream().filter(part -> requiredParts.contains(part.getName())).collect(Collectors.toCollection(ArrayList::new));

                if (filteredParts.isEmpty() && mpv.requiredNonEmpty()) {
                    throw new BadRequestException(new IllegalArgumentException("Required multipart with at least one of keys: " + Arrays.toString(mpv.value()) + " is not present"));
                }

                params.add(filteredParts);

            } else if (parameter.isAnnotationPresent(MultipartText.class)) {
                MultipartText mpt = parameter.getAnnotation(MultipartText.class);
                MultipartConfigElement mpConfig = new MultipartConfigElement(mpt.location());
                request.attribute("org.eclipse.jetty.multipartConfig", mpConfig);

                Part part = request.raw().getPart(mpt.value());
                if (part == null) {
                    if (mpt.defaultValue().isEmpty() && mpt.required()) {
                        throw new BadRequestException(new IllegalArgumentException("Required multipart with key: " + mpt.value() + " is not present"));
                    }

                    params.add(mpt.defaultValue());
                    continue;
                }

                Scanner sc = new Scanner(part.getInputStream()).useDelimiter("\\A");
                String text = sc.hasNext() ? sc.next() : "";
                sc.close();
                params.add(text);

            } else if (parameter.isAnnotationPresent(MultipartTextValues.class)) {
                MultipartTextValues mptv = parameter.getAnnotation(MultipartTextValues.class);
                MultipartConfigElement mpConfig = new MultipartConfigElement(mptv.location());
                request.attribute("org.eclipse.jetty.multipartConfig", mpConfig);

                ArrayList<Part> allParts = new ArrayList<>(request.raw().getParts());
                if (mptv.value().length == 0) {
                    if (allParts.isEmpty()) {
                        if (mptv.defaultValues().length == 0 && mptv.requiredNonEmpty()) {
                            throw new BadRequestException(new IllegalArgumentException("Required multipart with at least one of keys: " + Arrays.toString(mptv.value()) + " is not present"));
                        }

                        ArrayList<String> partValues = new ArrayList<>(Arrays.asList(mptv.defaultValues()));
                        params.add(partValues);
                        continue;
                    }

                    ArrayList<String> partValues = allParts.stream().map(part -> {
                                InputStream in = null;
                                try {
                                    in = part.getInputStream();
                                } catch (IOException e) {
                                    throw new RuntimeException(e);
                                }
                                Scanner sc = new Scanner(in).useDelimiter("\\A");
                                String text = sc.hasNext() ? sc.next() : "";
                                sc.close();
                                return text;
                            })
                            .collect(Collectors.toCollection(ArrayList::new));

                    params.add(partValues);
                    continue;
                }

                HashSet<String> requiredParts = new HashSet<>(List.of(mptv.value()));
                ArrayList<Part> filteredParts = allParts.stream().filter(part -> requiredParts.contains(part.getName())).collect(Collectors.toCollection(ArrayList::new));

                if (filteredParts.isEmpty()) {
                    if (mptv.defaultValues().length == 0 && mptv.requiredNonEmpty()) {
                        throw new BadRequestException(new IllegalArgumentException("Required multipart with at least one of keys: " + Arrays.toString(mptv.value()) + " is not present"));
                    }

                    ArrayList<String> partValues = new ArrayList<>(Arrays.asList(mptv.defaultValues()));
                    params.add(partValues);
                    continue;
                }


                ArrayList<String> partValues = filteredParts.stream().map(part -> {
                            InputStream in = null;
                            try {
                                in = part.getInputStream();
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                            Scanner sc = new Scanner(in).useDelimiter("\\A");
                            String text = sc.hasNext() ? sc.next() : "";
                            sc.close();
                            return text;
                        })
                        .collect(Collectors.toCollection(ArrayList::new));

                params.add(partValues);

            } else {
                throw new InternalServerException(new IllegalArgumentException("Unsupported argument type: " + type));
            }
        }

        return params;
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
