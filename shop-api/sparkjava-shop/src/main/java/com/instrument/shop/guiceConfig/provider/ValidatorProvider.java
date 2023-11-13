package com.instrument.shop.guiceConfig.provider;

import com.instrument.shop.core.validation.validator.PasswordValidator;
import jakarta.inject.Inject;
import jakarta.inject.Provider;
import jakarta.validation.Configuration;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorFactory;
import jakarta.validation.Validation;
import jakarta.validation.Validator;
import jakarta.validation.ValidatorFactory;
import org.hibernate.validator.internal.engine.constraintvalidation.ConstraintValidatorFactoryImpl;
import org.hibernate.validator.messageinterpolation.ParameterMessageInterpolator;

public class ValidatorProvider implements Provider<Validator> {
    private final org.passay.PasswordValidator validator;

    @Inject
    public ValidatorProvider(org.passay.PasswordValidator validator) {
        this.validator = validator;
    }

    @Override
    public Validator get() {
//        return Validation.byDefaultProvider()
//                .configure()
//                .messageInterpolator(new ParameterMessageInterpolator())
//                .buildValidatorFactory()
//                .getValidator();

        Configuration<?> config = Validation.byDefaultProvider()
                .configure()
                .constraintValidatorFactory(new MyConstraintValidatorFactory(validator))
                .messageInterpolator(new ParameterMessageInterpolator());

        try (ValidatorFactory validatorFactory = config.buildValidatorFactory()) {
            return validatorFactory.getValidator();
        }
    }
}

class MyConstraintValidatorFactory implements ConstraintValidatorFactory {
    private final ConstraintValidatorFactory constraintValidator = new ConstraintValidatorFactoryImpl();
    private final org.passay.PasswordValidator passwordValidator;

    MyConstraintValidatorFactory(org.passay.PasswordValidator passwordValidator) {
        this.passwordValidator = passwordValidator;
    }

    @Override
    public <T extends ConstraintValidator<?, ?>> T getInstance(Class<T> key) {
        if (key.equals(PasswordValidator.class)) {
            return (T) new PasswordValidator(passwordValidator);
        }
        return constraintValidator.getInstance(key);
    }

    @Override
    public void releaseInstance(ConstraintValidator<?, ?> instance) {

    }
}
