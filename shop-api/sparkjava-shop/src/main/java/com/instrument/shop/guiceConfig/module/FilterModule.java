package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import com.google.inject.TypeLiteral;
import com.instrument.shop.filter.Filter;
import com.instrument.shop.filter.UserFilter;
import com.instrument.shop.model.User;

public class FilterModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(new TypeLiteral<Filter<User>>() {}).to(UserFilter.class).in(Scopes.SINGLETON);
    }
}
