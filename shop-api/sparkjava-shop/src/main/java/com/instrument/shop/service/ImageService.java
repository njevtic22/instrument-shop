package com.instrument.shop.service;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.Image;
import com.instrument.shop.service.impl.ImageServiceImpl;

import java.io.IOException;
import java.util.List;

@ImplementedBy(ImageServiceImpl.class)
public interface ImageService {
    List<Image> uploadImages(List<byte[]> images) throws IOException;

    List<Image> getAllById(Iterable<Long> ids);

    void delete(Long id);
}
