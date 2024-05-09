package com.instrument.shop.controller;

import com.instrument.shop.dto.image.ImageViewDto;
import com.instrument.shop.mapper.ImageMapper;
import com.instrument.shop.model.Image;
import com.instrument.shop.service.ImageService;
import com.sparkjava.context.annotation.MultipartValues;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import javax.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Singleton
@RequestMapping("api/images")
public class ImageController {
    private final ImageService service;
    private final ImageMapper mapper;

    @Inject
    public ImageController(ImageService service, ImageMapper mapper) {
        this.service = service;
        this.mapper = mapper;
    }

    @PostMapping(consumes = "multipart/form-data")
    @PreAuthorize
    public List<ImageViewDto> uploadImage(@MultipartValues({"images"}) Collection<Part> images) throws IOException {
        ArrayList<byte[]> imagesBytes = new ArrayList<>(images.size());
        for (Part image : images) {
            validateImageType(image.getContentType());
            imagesBytes.add(image.getInputStream().readAllBytes());
        }

        List<Image> uploaded = service.uploadImages(imagesBytes);
        return uploaded
                .stream()
                .map(mapper::toViewDto)
                .toList();
    }

    private void validateImageType(String imageType) {
        if (!imageType.equalsIgnoreCase("image/jpeg")
                && !imageType.equalsIgnoreCase("image/jpg")
                && !imageType.equalsIgnoreCase("image/png")) {
            throw new IllegalArgumentException("Each image type must be one of jpeg, jpg or png.");
        }
    }
}
