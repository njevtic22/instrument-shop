package com.instrument.shop.service;

import jakarta.inject.Singleton;

import java.util.Random;

@Singleton
public class CodeService {
    private final String alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private final int n = alphabet.length();
    private final Random rnd = new Random();

    public String generateCode(Long entityId, int minLength) {
        StringBuilder code = new StringBuilder(5);
        for (int i = 0; i < minLength; i++) {
            code.append(alphabet.charAt(rnd.nextInt(n)));
        }
        code.append(entityId);
        return code.toString();
    }
}
