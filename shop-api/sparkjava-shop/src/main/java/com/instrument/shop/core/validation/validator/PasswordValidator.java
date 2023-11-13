package com.instrument.shop.core.validation.validator;

import com.instrument.shop.core.validation.annotation.Password;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.passay.PasswordData;
import org.passay.RuleResult;

import java.util.List;

public class PasswordValidator implements ConstraintValidator<Password, String> {
    private String field;
    private final org.passay.PasswordValidator validator;

//    Dependency injection alone not working because this class is
//    instantiated by hibernate validator, not google guice.
//    Workaround and a bit messy solution (no guice injection)
//    in my.sparkjava.example.guiceConfig.provider.ValidatorProvider

    public PasswordValidator(org.passay.PasswordValidator validator) {
        this.validator = validator;
    }


    @Override
    public void initialize(Password constraintAnnotation) {
        field = constraintAnnotation.field();
    }

    @Override
    public boolean isValid(String password, ConstraintValidatorContext context) {
//         Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:
//         Source: https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
//        return password != null && password.length() >= 8 && password.matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#@$!%*?&])[A-Za-z\\d#@$!%*?&]{8,}$");

        if (password == null) {
            setUpContext(context, field + " must not be null");
            return false;
        }

        PasswordData passwordData = new PasswordData(password);
        RuleResult result = validator.validate(passwordData);

        if (!result.isValid()) {
            List<String> messages = validator.getMessages(result);
            String fullMessage = String.join("|", messages);
            if (!field.equals("Password")) {
                fullMessage = fullMessage.replaceAll("Password", field);
            }

            setUpContext(context, fullMessage);
            return false;
        }


        return true;
    }

    private void setUpContext(ConstraintValidatorContext context, String message) {
        context.disableDefaultConstraintViolation();
        context
                .buildConstraintViolationWithTemplate(message)
                .addConstraintViolation();
    }
}
