package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.Image;
import com.instrument.shop.service.impl.ImageServiceImpl;

import java.io.IOException;
import java.util.List;

@ImplementedBy(ImageServiceImpl.class)
public interface ImageService {
    List<Image> uploadImages(List<byte[]> images) throws IOException;

    void delete(Long id);
}
