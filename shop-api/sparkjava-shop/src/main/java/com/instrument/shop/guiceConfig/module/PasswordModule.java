package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(PasswordEncoder.class).to(BCryptPasswordEncoder.class).in(Scopes.SINGLETON);
    }
}
