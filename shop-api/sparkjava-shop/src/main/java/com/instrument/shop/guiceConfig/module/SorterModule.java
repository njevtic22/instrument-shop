package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import com.google.inject.TypeLiteral;
import com.instrument.shop.model.User;
import com.instrument.shop.sorter.Sorter;
import com.instrument.shop.sorter.UserSorter;

public class SorterModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(new TypeLiteral<Sorter<User>>() {}).to(UserSorter.class).in(Scopes.SINGLETON);
    }
}
