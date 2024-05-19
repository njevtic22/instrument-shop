package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;

import java.util.List;
import java.util.Objects;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class Instrument implements DatabaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "instrument_generator")
    @SequenceGenerator(name = "instrument_generator", sequenceName = "instrument_id_seq", allocationSize = 1)
    protected Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String mark;

    @Column(nullable = false, length = 1000)
    private String description;

    @Column(nullable = false)
    protected float price;

    @OneToMany
    private List<Image> images;

    public Instrument() { }

    public Instrument(String name, String mark, String description, float price, List<Image> images) {
        this(null, name, mark, description, price, images);
    }

    public Instrument(Long id, String name, String mark, String description, float price, List<Image> images) {
        this.id = id;
        this.name = Strings.requireNonBlank(name, "Name must not be blank");
        this.mark = Strings.requireNonBlank(mark, "Mark must not be blank");
        this.description = Strings.requireNonBlank(description, "Description must not be blank");
        this.price = price;
        this.images = images;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Instrument that)) return false;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getMark() {
        return mark;
    }

    public String getDescription() {
        return description;
    }

    public float getPrice() {
        return price;
    }

    public List<Image> getImages() {
        return images;
    }
}
