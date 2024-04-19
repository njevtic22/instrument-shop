package com.instrument.shop.dto.user;

import com.instrument.shop.core.validation.annotation.Password;
import jakarta.validation.constraints.NotBlank;

public record PasswordChangeDto(@NotBlank(message = "Old password must not be blank.") String oldPassword,
                                @Password(field = "New password") String newPassword,
                                @NotBlank(message = "Repeated password must not be blank.") String repeatedPassword) {
}
