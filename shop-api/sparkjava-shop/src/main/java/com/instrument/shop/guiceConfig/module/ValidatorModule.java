package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import com.instrument.shop.guiceConfig.provider.PassayProvider;
import com.instrument.shop.guiceConfig.provider.ValidatorProvider;
import jakarta.validation.Validator;
import org.passay.PasswordValidator;

public class ValidatorModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(Validator.class).toProvider(ValidatorProvider.class).in(Scopes.SINGLETON);
        bind(PasswordValidator.class).toProvider(PassayProvider.class).in(Scopes.SINGLETON);
    }
}
