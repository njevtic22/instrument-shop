package com.instrument.shop.dto.user;

import com.instrument.shop.dto.image.ImageViewDto;

public record UserViewDto(Long id, String name, String surname, String email, String username, String role, ImageViewDto image) {
}

