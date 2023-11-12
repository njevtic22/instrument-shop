package com.instrument.shop.repository.impl;

import com.instrument.shop.core.error.exceptions.EntityNotFoundException;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.util.NumberGenerator;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;
import java.util.stream.Collectors;

@Singleton
public class UserRepositoryImpl implements UserRepository {
    private final TreeMap<Long, User> data;
    private final NumberGenerator<Long> userId;

    @Inject
    public UserRepositoryImpl(Map<Long, User> data, NumberGenerator<Long> userId) {
        this.data = new TreeMap<>(data);
        this.userId = userId;
    }

    @Override
    public long count() {
        return data.size();
    }

    @Override
    public User save(User user) {
        if (user.getId() == null) {
            setId(user, userId.next());
        }

        data.put(user.getId(), user);
        // TODO: serialize
        return user;
    }

    @Override
    public List<User> saveAll(Iterable<User> users) {
        ArrayList<User> savedUsers = new ArrayList<>(10);

        for (User user : users) {
            if (user.getId() == null) {
                setId(user, userId.next());
            }

            data.put(user.getId(), user);
            savedUsers.add(user);
        }

        // TODO: serialize
        return savedUsers;
    }

    @Override
    public List<User> findAll() {
        return new ArrayList<>(data.values());
    }

    @Override
    public Optional<User> findById(Long id) {
        return Optional.ofNullable(data.get(id));
    }

    @Override
    public boolean existsById(Long id) {
        return findById(id).isPresent();
    }

    @Override
    public void delete(User user) {
        data.remove(user.getId(), user);
        // TODO: serialize
    }

    @Override
    public void deleteById(Long id) {
        if (!existsById(id)) {
            throw new EntityNotFoundException("User", id);
        }

        data.remove(id);
        // TODO: serialize
    }

    @Override
    public List<User> findAllByArchivedFalse() {
        return findAll()
                .stream()
                .filter(user -> !user.isArchived())
                .collect(Collectors.toList());
    }

    @Override
    public Optional<User> findByIdAndArchivedFalse(Long id) {
        Optional<User> foundOptional = findById(id);

        if (foundOptional.isPresent() && !foundOptional.get().isArchived()) {
            return foundOptional;
        }

        return Optional.empty();
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        return findByIdAndArchivedFalse(id).isPresent();
    }

//    @Override
//    public void archive(User user) {
//        setArchived(user, true);
//
//        data.put(user.getId(), user);
//        // TODO: serialize
//    }
//
//    @Override
//    public void archiveById(Long id) {
//        User user = findByIdAndArchivedFalse(id)
//                .orElseThrow(() -> new EntityNotFoundException("User", id));
//
//        archive(user);
//    }

    private void setId(User user, Long id) {
        Class<? extends User> userClass = user.getClass();

        try {
            Field idField = userClass.getDeclaredField("id");
            idField.setAccessible(true);
            idField.set(user, id);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
}
