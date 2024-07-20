package com.instrument.shop.service.impl;

import com.instrument.shop.core.error.exception.BuyingException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.BoughtInstrumentRepository;
import com.instrument.shop.service.AvailableInstrumentService;
import com.instrument.shop.service.BoughtInstrumentService;
import com.instrument.shop.service.ImageService;
import com.instrument.shop.service.ReceiptService;
import com.instrument.shop.service.UserService;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Singleton
public class BoughtInstrumentServiceImpl implements BoughtInstrumentService {
    private final BoughtInstrumentRepository repository;
    private final AvailableInstrumentService availableService;
    private final UserService userService;
    private final ReceiptService receiptService;
    private final ImageService imageService;

    @Inject
    public BoughtInstrumentServiceImpl(
            BoughtInstrumentRepository repository,
            AvailableInstrumentService availableService,
            UserService userService,
            ReceiptService receiptService,
            ImageService imageService
    ) {
        this.repository = repository;
        this.availableService = availableService;
        this.userService = userService;
        this.receiptService = receiptService;
        this.imageService = imageService;
    }

    @Override
    public void buy(User customer, Map<Long, Integer> instrumentQuantity, float paid) {
        Map<Long, AvailableInstrument> cart = getCart(customer);

        if (cart.isEmpty()) {
            throw new BuyingException("Your cart is empty");
        }

        ArrayList<ReceiptItem> items = new ArrayList<>(cart.size());
        ArrayList<BoughtInstrument> boughtInstruments = new ArrayList<>(cart.size());
        ArrayList<AvailableInstrument> changedAvailables = new ArrayList<>(cart.size());

        LocalDateTime now = LocalDateTime.now();
        float totalPrice = 0;

        for (Map.Entry<Long, Integer> entry : instrumentQuantity.entrySet()) {
            Long instrumentId = entry.getKey();
            Integer toBuy = entry.getValue();

            AvailableInstrument available = cart.remove(instrumentId);
            if (available == null) {
                throw new BuyingException("You can not buy instrument which is not in your cart");
            }

            int inStock = available.getQuantity();
            int remaining = inStock - toBuy;
            if (remaining < 0) {
                throw new BuyingException("You can not buy more than " + inStock + " '" + available.getName() + "' instruments");
            }

            totalPrice += available.getPrice() * toBuy;
            available.setQuantity(remaining);
            changedAvailables.add(available);

            BoughtInstrument bought = copy(available, toBuy, customer, now);
            customer.getBought().add(bought);
            boughtInstruments.add(bought);

            ReceiptItem item = new ReceiptItem(
                    toBuy,
                    bought,
                    null
            );
            items.add(item);
        }

        if (totalPrice >= paid) {
            throw new BuyingException("You did not pay enough");
        }
        if (!cart.isEmpty()) {
            throw new BuyingException("You did not buy everything from your cart");
        }

        Receipt newReceipt = new Receipt(
                "",
                totalPrice,
                paid,
                paid - totalPrice,
                now,
                items
        );

        List<Image> images = boughtInstruments
                .stream()
                .flatMap(boughtInstrument -> boughtInstrument.getImages().stream())
                .toList();

        userService.clearCart(customer);
        imageService.saveAll(images);
        repository.saveAll(boughtInstruments);
        availableService.saveAll(changedAvailables);
        receiptService.add(newReceipt);
    }

    @Override
    public PaginatedResponse<BoughtInstrument> getAll(Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAll(filterData, sort, pageRequest);
    }

    @Override
    public PaginatedResponse<BoughtInstrument> getAllByCustomer(User customer, Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        return repository.findAllByOwnerId(customer.getId(), filterData, sort, pageRequest);
    }

    private BoughtInstrument copy(AvailableInstrument instrument, int owned, User owner, LocalDateTime purchased) {
        List<Image> boughtImages = instrument.getImages()
                .stream()
                .map(image -> new Image(image.getUrl()))
                .toList();

        return new BoughtInstrument(
                instrument.getCode(),
                instrument.getName(),
                instrument.getMark(),
                instrument.getDescription(),
                instrument.getPrice(),
                boughtImages,
                owned,
                instrument.getType().getName(),
                purchased,
                owner
        );
    }

    private Map<Long, AvailableInstrument> getCart(User customer) {
        List<AvailableInstrument> cartList = customer.getCart();
        HashMap<Long, AvailableInstrument> cartMap = new HashMap<>(cartList.size());

        for (AvailableInstrument instrument : cartList) {
            cartMap.put(instrument.getId(), instrument);
        }

        return cartMap;
    }
}
