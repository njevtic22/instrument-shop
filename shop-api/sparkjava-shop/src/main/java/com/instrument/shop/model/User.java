package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

import java.util.Objects;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_generator")
    @SequenceGenerator(name = "user_generator", sequenceName = "user_id_seq", allocationSize = 1)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String surname;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private boolean archived;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Role role;

    public User() { }

    public User(String name, String surname, String email, String username, String password, boolean archived, Role role) {
        this(null, name, surname, email, username, password, archived, role);
    }

    public User(Long id, String name, String surname, String email, String username, String password, boolean archived, Role role) {
        this.id = id;
        this.name = Strings.requireNonBlank(name, "Name must not be blank");
        this.surname = Strings.requireNonBlank(surname, "Surname must not be blank");
        this.email = Strings.requireNonBlank(email, "Email must not be blank");
        this.username = Strings.requireNonBlank(username, "Username must not be blank");
        this.password = Strings.requireNonBlank(password, "Password must not be blank");
        this.archived = archived;
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User user)) return false;
        return Objects.equals(id, user.id) && email.equals(user.email) && username.equals(user.username);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, email, username);
    }

    public boolean isManager() {
        return role.equals(Role.MANAGER);
    }

    public boolean isSalesman() {
        return role.equals(Role.SALESMAN);
    }

    public boolean isCustomer() {
        return role.equals(Role.CUSTOMER);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isArchived() {
        return archived;
    }

    public void setArchived(boolean archived) {
        this.archived = archived;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
