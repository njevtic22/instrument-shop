package com.instrument.shop.controller;

import com.google.gson.Gson;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.RequestHeader;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import spark.Request;
import spark.Response;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletException;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.TreeMap;

@Singleton
@RequestMapping("api/examples")
public class ExampleController {
    private final Gson gson;

    @Inject
    public ExampleController(Gson gson) {
        this.gson = gson;
    }

    @GetMapping
    @MethodOrder(100)
    public String getAll(Request request, @RequestHeader("User-Agent") String userAgent) {
        TreeMap<String, String> examples = new TreeMap<>();
        for (String header : request.headers()) {
            examples.put(header, request.headers(header));
        }

        examples.put("my user agent", userAgent);
        examples.put("non existing", request.headers("nonExisting"));

        return gson.toJson(examples);
    }

    @PostMapping(consumes = "image/*")
    @MethodOrder(80)
    public String upload(Request request, Response response) throws ServletException, IOException {
        long maxFileSize = 10 * 1024 * 1024;       // the maximum size allowed for uploaded files
        long maxRequestSize = 100 * 1024 * 1024;    // the maximum size allowed for multipart/form-data requests
        int fileSizeThreshold = 5 * 1024;       // the size threshold after which files will be written to disk
        MultipartConfigElement multipartConfig = new MultipartConfigElement("/spark-java-temp", maxFileSize, maxRequestSize, fileSizeThreshold);
        request.attribute("org.eclipse.jetty.multipartConfig", multipartConfig);

        File tmpLocal = new File("tmp-local");
        tmpLocal.mkdir();

        // Option 1
//        Collection<Part> parts = request.raw().getParts();
//        ArrayList<File> images = new ArrayList<>(parts.size());
//        for (Part part : parts) {
////            System.out.println("part.getContentType(): " + part.getContentType());
////            System.out.println("Name: " + part.getName());
////            System.out.println("Size: " + part.getSize());
////            System.out.println("Filename: " + part.getSubmittedFileName());
//
//            validateImageType(part);
//            InputStream in = part.getInputStream();
//            Path out = File.createTempFile("tmp-", "-" + part.getSubmittedFileName(), tmpLocal).toPath();
//            Files.copy(in, out, StandardCopyOption.REPLACE_EXISTING);
//
//            images.add(out.toFile());
//
//        }
//
//        List<Image> uploaded = service.uploadImageFiles(images);
//
//        for (File image : images) {
//            boolean deleted = image.delete();
//        }

        // Option 2
        ArrayList<File> imageFiles = new ArrayList<>();
        Collection<Part> parts = request.raw().getParts();
        ArrayList<byte[]> images = new ArrayList<>(parts.size());
        for (Part part : parts) {
            validateImageType(part);
            byte[] image = part.getInputStream().readAllBytes();
            images.add(image);


            Path out = File.createTempFile("tmp-", "-" + part.getSubmittedFileName(), tmpLocal).toPath();
            Files.write(out, image);
            imageFiles.add(out.toFile());
        }

        for (File image : imageFiles) {
            boolean deleted = image.delete();
        }

        return "Uploaded";
    }

    private void validateImageType(Part part) {
        String imageType = part.getContentType();
        System.out.println(imageType);
        if (!imageType.equalsIgnoreCase("image/jpeg")
                && !imageType.equalsIgnoreCase("image/jpg")
                && !imageType.equalsIgnoreCase("image/png")) {
            throw new IllegalArgumentException("Each image type must be one of jpeg, jpg or png.");
        }
    }
}
