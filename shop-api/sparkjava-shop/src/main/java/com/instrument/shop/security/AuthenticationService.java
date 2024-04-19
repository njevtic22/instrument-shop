package com.instrument.shop.security;

import com.instrument.shop.util.Pair;

public interface AuthenticationService {
    Pair<String, String> login(String username, String password);
}
