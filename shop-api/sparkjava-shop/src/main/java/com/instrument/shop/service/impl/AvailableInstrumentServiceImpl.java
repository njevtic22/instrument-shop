package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exception.CartException;
import com.instrument.shop.core.error.exception.EntityNotFoundException;
import com.instrument.shop.core.error.exception.PropertyLengthException;
import com.instrument.shop.core.error.exception.UniquePropertyException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.AvailableInstrumentRepository;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.service.AvailableInstrumentService;
import com.instrument.shop.service.ImageService;
import com.instrument.shop.service.InstrumentTypeService;
import com.sparkjava.context.exception.ForbiddenException;
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
    private final UserRepository userRepository;

    @Inject
    public AvailableInstrumentServiceImpl(AvailableInstrumentRepository repository, InstrumentTypeService typeService, ImageService imageService, UserRepository userRepository) {
        this.repository = repository;
        this.typeService = typeService;
        this.imageService = imageService;
        this.userRepository = userRepository;
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
                type,
                new ArrayList<>()
        );

        return repository.save(instrument);
    }

    @Override
    public PaginatedResponse<AvailableInstrument> getAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByArchivedFalse(filterData, sort, pageRequest);
    }

    @Override
    public AvailableInstrument getById(Long id) {
        Objects.requireNonNull(id, "Id must not be null");
        return repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("Instrument", id));
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
                type,
                existing.getPotentialCustomers()
        );

        return repository.save(updated);
    }

    @Override
    public void delete(Long id) {
        Objects.requireNonNull(id, "Id must not be null");

        AvailableInstrument found = repository.findByIdAndArchivedFalse(id)
                .orElseThrow(() -> new EntityNotFoundException("Instrument", id));

        // is there better way?
        for (User customer : found.getPotentialCustomers()) {
            customer.getCart().remove(found);
        }
        found.archive();

        repository.save(found);
        userRepository.saveAll(found.getPotentialCustomers());
    }

    @Override
    public List<AvailableInstrument> saveAll(Iterable<AvailableInstrument> instruments) {
        return repository.saveAll(instruments);
    }

    @Override
    public void validateCode(String code) {
        if (repository.existsByCode(code)) {
            throw new UniquePropertyException("Code", code);
        }
    }

    @Override
    public void validateDescription(String description) {
        if (description.length() > 2000) {
            throw new PropertyLengthException("Description", 2000);
        }
    }

    @Override
    public AvailableInstrument addImages(Long instrumentId, Long[] imageIds) {
        AvailableInstrument found = getById(instrumentId);
        List<Image> foundImages = imageService.getAllById(Arrays.asList(imageIds));

        if (!foundImages.isEmpty()) {
            found.getImages().addAll(foundImages);
            return repository.save(found);
        }
        return found;
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
            if (index != null) {
                images.remove(index.intValue());
                imageService.delete(imageId);
            }
        }

        repository.save(found);
    }

    @Override
    public PaginatedResponse<AvailableInstrument> getCart(User customer, Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findCartByArchivedFalse(customer.getId(), filterData, sort, pageRequest);
    }

    @Override
    public void addToCart(User customer, Long instrumentId) {
        if (!customer.isCustomer()) {
            throw new ForbiddenException();
        }

        AvailableInstrument found = repository.findByIdAndArchivedFalse(instrumentId)
                .orElseThrow(() -> new EntityNotFoundException("Available instrument", instrumentId));

        if (found.isArchived()) {
            throw new CartException("Requested instrument does not exist");
        }

        if (repository.isInCart(customer.getId(), found.getId())) {
            return;
        }

        // is there any other solution?
        customer.getCart().add(found);
        userRepository.save(customer);
    }

    @Override
    public void removeFromCart(User customer, Long instrumentId) {
        if (!customer.isCustomer()) {
            throw new ForbiddenException();
        }

        AvailableInstrument found = repository.findByIdAndArchivedFalse(instrumentId)
                .orElseThrow(() -> new EntityNotFoundException("Available instrument", instrumentId));

        if (found.isArchived()) {
            throw new CartException("Requested instrument does not exist");
        }

        if (!repository.isInCart(customer.getId(), found.getId())) {
            throw new CartException("Requested instrument is not in cart");
        }

        // is there any other solution?
        customer.getCart().remove(found);
        userRepository.save(customer);
    }
}
