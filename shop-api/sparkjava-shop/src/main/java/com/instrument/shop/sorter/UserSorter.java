package com.instrument.shop.sorter;

import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.User;

import java.util.Comparator;
import java.util.List;
import java.util.Map;

public class UserSorter implements Sorter<User> {
    private final Map<String, Comparator<User>> comparators = Map.ofEntries(
            Map.entry("id,asc", Comparator.comparing(User::getId)),
            Map.entry("name,asc", Comparator.comparing(User::getName, String::compareToIgnoreCase).
                    thenComparing(User::getSurname, String::compareToIgnoreCase)),
            Map.entry("surname,asc", Comparator.comparing(User::getSurname, String::compareToIgnoreCase).
                    thenComparing(User::getName, String::compareToIgnoreCase)),
            Map.entry("email,asc", Comparator.comparing(User::getEmail, String::compareToIgnoreCase)),
            Map.entry("username,asc", Comparator.comparing(User::getUsername, String::compareToIgnoreCase)),
            Map.entry("role,asc", Comparator.comparing(u -> u.getRole().toString())),

            Map.entry("id,desc", Comparator.comparing(User::getId, Comparator.reverseOrder())),
            Map.entry("name,desc", Comparator.comparing(User::getName, (name1, name2) -> -1 * name1.compareToIgnoreCase(name2)).
                    thenComparing(User::getSurname, (surname1, surname2) -> -1 * surname1.compareToIgnoreCase(surname2))),
            Map.entry("surname,desc", Comparator.comparing(User::getSurname, (surname1, surname2) -> -1 * surname1.compareToIgnoreCase(surname2)).
                    thenComparing(User::getName, (name1, name2) -> -1 * name1.compareToIgnoreCase(name2))),
            Map.entry("email,desc", Comparator.comparing(User::getEmail, (email1, email2) -> -1 * email1.compareToIgnoreCase(email2))),
            Map.entry("username,desc", Comparator.comparing(User::getUsername, (username1, username2) -> -1 * username1.compareToIgnoreCase(username2))),
            Map.entry("role,desc", Comparator.comparing(u -> u.getRole().toString(), (roleName1, roleName2) -> -1 * roleName1.compareTo(roleName2)))
    );

    @Override
    public void sort(List<User> users, Sort sort) {
        Comparator<User> userComparator = getComparator(sort);
        if (userComparator == null) {
            return;
        }

        users.sort(userComparator);
    }

    private Comparator<User> getComparator(Sort sort) {
        String mapKey = sort.property() + "," + sort.order().toString().toLowerCase();
        return comparators.get(mapKey);

//        Comparator<User> comparator = null;

//        final int direction = sort.getOrder().getOrder();
//        switch (sort.getProperty()) {
//            case "id" -> comparator = (u1, u2) -> direction * u1.getId().compareTo(u2.getId());
//            case "name" -> comparator = Comparator.comparing(
//                    User::getName,
//                    (name1, name2) -> direction * name1.compareToIgnoreCase(name2)
//            ).thenComparing(
//                    User::getSurname,
//                    (surname1, surname2) -> direction * surname1.compareToIgnoreCase(surname2)
//            );
//            case "surname" -> comparator = Comparator.comparing(
//                    User::getSurname,
//                    (surname1, surname2) -> direction * surname1.compareToIgnoreCase(surname2)
//            ).thenComparing(
//                    User::getName,
//                    (name1, name2) -> direction * name1.compareToIgnoreCase(name2)
//            );
//            case "email" -> comparator = (u1, u2) -> direction * u1.getEmail().compareToIgnoreCase(u2.getEmail());
//            case "username" -> comparator = (u1, u2) -> direction * u1.getUsername().compareToIgnoreCase(u2.getUsername());
//            case "role" -> comparator = (u1, u2) -> direction * u1.getRole().toString().compareTo(u2.getRole().toString());
//        }

//        return comparator;
    }
}
