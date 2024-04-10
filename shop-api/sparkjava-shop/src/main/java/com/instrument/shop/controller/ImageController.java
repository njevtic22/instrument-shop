package com.instrument.shop.controller;

import com.sparkjava.context.annotation.Multipart;
import com.sparkjava.context.annotation.MultipartText;
import com.sparkjava.context.annotation.MultipartValues;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Singleton;

import javax.servlet.ServletException;
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
    @PostMapping(consumes = "image/*")
    public String uploadImage(
            @Multipart("image 2") Part image2,
            @Multipart("image 1") Part image1,
            @Multipart("pdf") Part pdf,

            @Multipart("emptyString") Part empty,
            @Multipart(value = "nonExisting", required = false) Part none,

            @Multipart("key") Part key,

            @MultipartValues Collection<Part> allFiles,
            @MultipartValues(value = {"pdf", "image 1", "key"}, requiredNonEmpty = false) Collection<Part> nonRequiredFiles,
            @MultipartValues({"key"}) Collection<Part> onlyKeys,

            @MultipartText("strKey") String strKey
    ) throws ServletException, IOException {
        File tmpLocal = new File("tmp-local");
        tmpLocal.mkdir();

        validateImageType(image2);
        InputStream in = image2.getInputStream();
        Path out = File.createTempFile("tmp-", "-" + image2.getSubmittedFileName(), tmpLocal).toPath();
        Files.copy(in, out, StandardCopyOption.REPLACE_EXISTING);

        validateImageType(image1);
        in = image1.getInputStream();
        out = File.createTempFile("tmp-", "-" + image1.getSubmittedFileName(), tmpLocal).toPath();
        Files.copy(in, out, StandardCopyOption.REPLACE_EXISTING);

//        validateImageType(pdf);
        in = pdf.getInputStream();
        out = File.createTempFile("tmp-", "-" + pdf.getSubmittedFileName(), tmpLocal).toPath();
        Files.copy(in, out, StandardCopyOption.REPLACE_EXISTING);

        for (Part file : nonRequiredFiles) {
            in = file.getInputStream();
            out = File.createTempFile("tmp-", "-" + file.getSubmittedFileName(), tmpLocal).toPath();
            Files.copy(in, out, StandardCopyOption.REPLACE_EXISTING);
        }

        return "Uploaded";
    }

    private void validateImageType(Part part) {
        String imageType = part.getContentType();
        if (!imageType.equalsIgnoreCase("image/jpeg")
                && !imageType.equalsIgnoreCase("image/jpg")
                && !imageType.equalsIgnoreCase("image/png")) {
            throw new IllegalArgumentException("Each image type must be one of jpeg, jpg or png.");
        }
    }
}
