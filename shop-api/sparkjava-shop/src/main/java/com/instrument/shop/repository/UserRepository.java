package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.impl.UserRepositoryImpl;

@ImplementedBy(UserRepositoryImpl.class)
public interface UserRepository extends CrudRepository<Long, User> {
}
