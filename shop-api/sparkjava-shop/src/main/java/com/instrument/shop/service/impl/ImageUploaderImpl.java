package com.instrument.shop.service.impl;

import com.cloudinary.Cloudinary;
import com.instrument.shop.service.ImageUploader;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import jakarta.inject.Singleton;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Singleton
public class ImageUploaderImpl implements ImageUploader {
    private final Cloudinary cloudinary;

    @Inject
    public ImageUploaderImpl(
            @Named("cloudName") String cloudName,
            @Named("cloudApiKey") String apiKey,
            @Named("cloudApiSecret") String apiSecret
    ) {
        this.cloudinary = new Cloudinary(
                Map.of(
                        "cloud_name", cloudName,
                        "api_key", apiKey,
                        "api_secret", apiSecret,
                        "secure", true
                )
        );
    }

    @Override
    public List<String> uploadImages(List<byte[]> images) throws IOException {
        List<String> urls = new ArrayList<>();
        for (byte[] image : images) {
            urls.add(uploadImage(image));
        }
        return urls;
    }

    private String uploadImage(byte[] image) throws IOException {
        Map result = cloudinary.uploader().upload(
                image,
                Map.of(
                        "folder", "musical instruments"
                )
        );
        return (String) result.get("secure_url");
    }
}
