package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

import java.util.Objects;

@Entity
@Table(name = "instrument_types")
public class InstrumentType {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "instrument_type_generator")
    @SequenceGenerator(name = "instrument_type_generator", sequenceName = "instrument_type_id_seq", allocationSize = 1)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private boolean archived;

    public InstrumentType() { }

    public InstrumentType(String name, boolean archived) {
        this(null, name, archived);
    }

    public InstrumentType(Long id, String name, boolean archived) {
        this.id = id;
        this.name = Strings.requireNonBlank(name, "Name must not be blank");
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof InstrumentType that)) return false;
        return Objects.equals(id, that.id) && Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isArchived() {
        return archived;
    }
}
