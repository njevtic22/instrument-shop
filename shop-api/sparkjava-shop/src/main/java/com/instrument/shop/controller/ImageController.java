package com.instrument.shop.controller;

import com.sparkjava.context.annotation.MultipartValues;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Singleton;

import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Collection;

@Singleton
@RequestMapping("api/images")
public class ImageController {
    @PostMapping(consumes = "multipart/form-data")
    public String uploadImage(@MultipartValues({"images"}) Collection<Part> allFiles) throws IOException {
        File tmpLocal = new File("tmp-local");
        tmpLocal.mkdir();

        for (Part file : allFiles) {
            validateImageType(file.getContentType());
            InputStream in = file.getInputStream();
            Path out = File.createTempFile("tmp-", "-" + file.getSubmittedFileName(), tmpLocal).toPath();
            Files.copy(in, out, StandardCopyOption.REPLACE_EXISTING);
        }

        return "Uploaded";
    }

    private void validateImageType(String imageType) {
        if (!imageType.equalsIgnoreCase("image/jpeg")
                && !imageType.equalsIgnoreCase("image/jpg")
                && !imageType.equalsIgnoreCase("image/png")) {
            throw new IllegalArgumentException("Each image type must be one of jpeg, jpg or png.");
        }
    }
}
