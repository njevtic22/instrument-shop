package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.instrument.shop.guiceConfig.provider.ValidatorProvider;
import jakarta.validation.Validator;

public class ValidatorModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(Validator.class).toProvider(ValidatorProvider.class);
    }
}
