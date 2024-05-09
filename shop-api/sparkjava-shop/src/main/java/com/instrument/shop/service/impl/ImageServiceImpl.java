package com.instrument.shop.service.impl;

import com.instrument.shop.model.Image;
import com.instrument.shop.service.ImageService;
import com.instrument.shop.service.ImageUploader;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@Singleton
public class ImageServiceImpl implements ImageService {
    private final ImageUploader uploader;

    @Inject
    public ImageServiceImpl(ImageUploader uploader) {
        this.uploader = uploader;
    }

    @Override
    public List<Image> uploadImages(List<byte[]> images) throws IOException {
        List<String> urls = uploader.uploadImages(images);

        List<Image> uploaded = urls
                .stream()
                .map(Image::new)
                .collect(Collectors.toList());

        return uploaded;
    }
}
