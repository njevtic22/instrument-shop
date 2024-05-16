package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.impl.UserRepositoryImpl;

import java.util.Optional;

@ImplementedBy(UserRepositoryImpl.class)
public interface UserRepository extends CrudRepository<Long, User> {
    Optional<User> findByUsernameAndArchivedFalse(String username);

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);

    int updatePasswordById(Long id, String newPassword);

    int updateUserImage(Long userId, Long imageId);
}
