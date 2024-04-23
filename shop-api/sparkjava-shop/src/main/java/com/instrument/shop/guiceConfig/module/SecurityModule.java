package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import com.instrument.shop.security.AuthenticationService;
import com.instrument.shop.security.impl.AuthenticationServiceImpl;
import com.instrument.shop.security.impl.AuthenticatorImpl;
import com.instrument.shop.security.impl.RolesGetterImpl;
import com.sparkjava.context.core.Authenticator;
import com.sparkjava.context.core.RolesGetter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class SecurityModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(PasswordEncoder.class).to(BCryptPasswordEncoder.class).in(Scopes.SINGLETON);

        bind(Authenticator.class).to(AuthenticatorImpl.class);
        bind(RolesGetter.class).to(RolesGetterImpl.class);
        bind(AuthenticationService.class).to(AuthenticationServiceImpl.class);
    }
}
