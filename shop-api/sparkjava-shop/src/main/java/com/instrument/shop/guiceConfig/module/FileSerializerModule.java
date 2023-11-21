package com.instrument.shop.guiceConfig.module;

import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import com.google.inject.TypeLiteral;
import com.instrument.shop.model.User;
import com.instrument.shop.serializers.fileSerializers.FileSerializer;
import com.instrument.shop.serializers.fileSerializers.JsonUserFileSerializer;

public class FileSerializerModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(new TypeLiteral<FileSerializer<Long, User>>() {}).to(JsonUserFileSerializer.class).in(Scopes.SINGLETON);
    }
}
