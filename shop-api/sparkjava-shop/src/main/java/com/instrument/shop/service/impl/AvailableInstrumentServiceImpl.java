package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.PropertyLengthException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.repository.AvailableInstrumentRepository;
import com.instrument.shop.service.AvailableInstrumentService;
import com.instrument.shop.service.ImageService;
import com.instrument.shop.service.InstrumentTypeService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Singleton
public class AvailableInstrumentServiceImpl implements AvailableInstrumentService {
    private final AvailableInstrumentRepository repository;
    private final InstrumentTypeService typeService;
    private final ImageService imageService;

    @Inject
    public AvailableInstrumentServiceImpl(AvailableInstrumentRepository repository, InstrumentTypeService typeService, ImageService imageService) {
        this.repository = repository;
        this.typeService = typeService;
        this.imageService = imageService;
    }

    @Override
    public AvailableInstrument add(AvailableInstrument newInstrument) {
        validateCode(newInstrument.getCode());
        validateDescription(newInstrument.getDescription());

        Long typeId = newInstrument.getType().getId();
        InstrumentType type = typeService.getById(typeId);

        AvailableInstrument instrument = new AvailableInstrument(
                newInstrument.getCode(),
                newInstrument.getName(),
                newInstrument.getMark(),
                newInstrument.getDescription(),
                newInstrument.getPrice(),
                new ArrayList<>(),
                newInstrument.getQuantity(),
                false,
                type
        );

        return repository.save(instrument);
    }

    @Override
    public PaginatedResponse<AvailableInstrument> getAll(Map<String, String> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByArchivedFalse(filterData, sort, pageRequest);
    }

    @Override
    public AvailableInstrument getById(Long id) {
        Objects.requireNonNull(id, "Id must not be null");
        return repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("Available instrument", id));
    }

    @Override
    public AvailableInstrument update(Long id, AvailableInstrument changes) {
        Objects.requireNonNull(changes, "Instrument changes must not be null");

        AvailableInstrument existing = getById(id);
        if (!existing.getCode().equals(changes.getCode())) {
            validateCode(changes.getCode());
        }
        if (!existing.getDescription().equals(changes.getDescription())) {
            validateDescription(changes.getDescription());
        }

        InstrumentType type = typeService.getById(changes.getType().getId());
        AvailableInstrument updated = new AvailableInstrument(
                existing.getId(),
                changes.getCode(),
                changes.getName(),
                changes.getMark(),
                changes.getDescription(),
                changes.getPrice(),
                existing.getImages(),
                changes.getQuantity(),
                existing.isArchived(),
                type
        );

        return repository.save(updated);
    }

    @Override
    public void delete(Long aLong) {

    }

    @Override
    public void validateCode(String code) {
        if (repository.existsByCode(code)) {
            throw new UniquePropertyException("Code", code);
        }
    }

    @Override
    public void validateDescription(String description) {
        if (description.length() > 1000) {
            throw new PropertyLengthException("Description", 1000);
        }
    }

    @Override
    public AvailableInstrument addImages(Long instrumentId, Long[] imageIds) {
        AvailableInstrument found = getById(instrumentId);
        List<Image> foundImages = imageService.getAllById(Arrays.asList(imageIds));

        found.getImages().addAll(foundImages);
        return repository.save(found);
    }

    @Override
    public void deleteImages(Long instrumentId, Long[] imageIds) {
        AvailableInstrument found = getById(instrumentId);
        List<Image> images = found.getImages();
        HashMap<Long, Integer> indexes = new HashMap<>();
        for (int i = 0; i < images.size(); i++) {
            Image image = images.get(i);
            indexes.put(image.getId(), i);
        }

        for (Long imageId : imageIds) {
            Integer index = indexes.get(imageId);
            images.remove(index.intValue());
            imageService.delete(imageId);
        }

        repository.save(found);
    }
}
