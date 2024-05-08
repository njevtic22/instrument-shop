package com.instrument.shop.security;

import com.instrument.shop.model.User;
import com.instrument.shop.util.Pair;

public interface AuthenticationService {
    Pair<String, String> login(String username, String password);

    Pair<String, String> registerUser(User toRegister, String repeatedPassword);

    User getUserFromToken(String jwt);

    String getRoleFromToken(String jwt);
}
