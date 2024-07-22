package com.instrument.shop.dto.cart;

import com.instrument.shop.dto.image.ImageViewDto;
import com.instrument.shop.dto.instrument.AvailableViewDto;

import java.util.List;

public class CartItemViewDto extends AvailableViewDto {
    private final int quantityToBuy;

    public CartItemViewDto(Long id, String code, String name, String mark, String description, float price, List<ImageViewDto> images, String type, int quantity, int quantityToBuy) {
        super(id, code, name, mark, description, price, images, type, quantity);
        this.quantityToBuy = quantityToBuy;
    }

    public int getQuantityToBuy() {
        return quantityToBuy;
    }
}
