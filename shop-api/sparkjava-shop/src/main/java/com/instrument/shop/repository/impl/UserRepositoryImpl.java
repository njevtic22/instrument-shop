package com.instrument.shop.repository.impl;

import com.instrument.shop.core.error.exceptions.EntityNotFoundException;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Paginator;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.UserRepository;
import com.instrument.shop.serializers.fileSerializers.FileSerializer;
import com.instrument.shop.sorter.Sorter;
import com.instrument.shop.util.NumberGenerator;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.io.IOException;
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
    private final FileSerializer<Long, User> serializer;
    private final Sorter<User> sorter;
    private final Paginator paginator;

    @Inject
    public UserRepositoryImpl(
            Map<Long, User> data,
            NumberGenerator<Long> userId,
            FileSerializer<Long, User> serializer,
            Sorter<User> sorter,
            Paginator paginator
    ) {
        this.data = new TreeMap<>(data);
        this.userId = userId;
        this.serializer = serializer;
        this.sorter = sorter;
        this.paginator = paginator;
    }

    @Override
    public long count() {
        return data.size();
    }

    @Override
    public User save(User user) throws IOException {
        if (user.getId() == null) {
            setId(user, userId.next());
        }

        data.put(user.getId(), user);
        serializer.serialize(data);
        return user;
    }

    @Override
    public List<User> saveAll(Iterable<User> users) throws IOException {
        ArrayList<User> savedUsers = new ArrayList<>(10);

        for (User user : users) {
            if (user.getId() == null) {
                setId(user, userId.next());
            }

            data.put(user.getId(), user);
            savedUsers.add(user);
        }

        serializer.serialize(data);
        return savedUsers;
    }

    @Override
    public PaginatedResponse<User> findAll(Sort sort, PageRequest pageRequest) {
        ArrayList<User> allUsers = new ArrayList<>(data.values());
        sorter.sort(allUsers, sort);
        return paginator.paginate(allUsers, pageRequest);
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
    public void delete(User user) throws IOException {
        data.remove(user.getId(), user);
        serializer.serialize(data);
    }

    @Override
    public void deleteById(Long id) throws IOException {
        if (!existsById(id)) {
            throw new EntityNotFoundException("User", id);
        }

        data.remove(id);
        serializer.serialize(data);
    }

    @Override
    public PaginatedResponse<User> findAllByArchivedFalse(Sort sort, PageRequest pageRequest) {
        List<User> allUsers = new ArrayList<>(data.values())
                .stream()
                .filter(user -> !user.isArchived())
                .collect(Collectors.toList());

        sorter.sort(allUsers, sort);
        return paginator.paginate(allUsers, pageRequest);
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
//        serializer.serialize(data);
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
