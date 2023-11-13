package com.instrument.shop.guiceConfig.provider;

import jakarta.inject.Provider;
import jakarta.inject.Singleton;
import jakarta.validation.Configuration;
import jakarta.validation.Validation;
import jakarta.validation.Validator;
import jakarta.validation.ValidatorFactory;
import org.hibernate.validator.messageinterpolation.ParameterMessageInterpolator;

@Singleton
public class ValidatorProvider implements Provider<Validator> {
    @Override
    public Validator get() {
//        return Validation.byDefaultProvider()
//                .configure()
//                .messageInterpolator(new ParameterMessageInterpolator())
//                .buildValidatorFactory()
//                .getValidator();

        Configuration<?> config = Validation.byDefaultProvider()
                .configure()
                .messageInterpolator(new ParameterMessageInterpolator());

        try (ValidatorFactory validatorFactory = config.buildValidatorFactory()) {
            return validatorFactory.getValidator();
        }
    }
}
