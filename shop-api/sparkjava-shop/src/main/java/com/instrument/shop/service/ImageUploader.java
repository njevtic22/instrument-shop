package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.service.impl.ImageUploaderImpl;

import java.io.IOException;
import java.util.List;

@ImplementedBy(ImageUploaderImpl.class)
public interface ImageUploader {
    List<String> uploadImages(List<byte[]> images) throws IOException;
}
