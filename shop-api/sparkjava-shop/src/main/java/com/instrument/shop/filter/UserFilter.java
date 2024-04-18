package com.instrument.shop.filter;

import com.instrument.shop.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Predicate;

public class UserFilter implements Filter<User>{
    @Override
    public void filter(List<User> users, Map<String, String> filterData) {
        Optional<Predicate<User>> predicateChain = getPredicateChain(filterData);
        predicateChain.ifPresent(users::removeIf);
    }

    private Optional<Predicate<User>> getPredicateChain(Map<String, String> filterData) {
        ArrayList<Predicate<User>> predicates = new ArrayList<>(filterData.size());

        for (Map.Entry<String, String> filterEntry : filterData.entrySet()) {
            Predicate<User> filterPredicate = null;

            String filterBy = filterEntry.getKey();
            String filterValue = filterEntry.getValue();

            switch (filterBy) {
                case "name" ->     filterPredicate = user -> !user.getName().toLowerCase().contains(filterValue.toLowerCase());
                case "surname" ->  filterPredicate = user -> !user.getSurname().toLowerCase().contains(filterValue.toLowerCase());
                case "email" ->    filterPredicate = user -> !user.getEmail().toLowerCase().contains(filterValue.toLowerCase());
                case "username" -> filterPredicate = user -> !user.getUsername().toLowerCase().contains(filterValue.toLowerCase());
                case "role" ->     filterPredicate = user -> !user.getRole().toString().equals(filterValue.toUpperCase());
            }

            if (filterPredicate != null) {
                predicates.add(filterPredicate);
            }
        }

        return predicates
                .stream()
                .reduce(Predicate::or);
    }
}
