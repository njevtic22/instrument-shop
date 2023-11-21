package com.instrument.shop.serializers.serializedModel.jsonModel;

public record JsonUser(
        Long id,
        String name,
        String surname,
        String email,
        String username,
        String password,
        boolean archived,
        String role
) {
}
