package com.instrument.shop.model;

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
    private Long id;

    @Column(nullable = false, unique = true)
    private String code;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String mark;

    @Column(nullable = false, length = 1000)
    private String description;

    @Column(nullable = false)
    private float price;

    @OneToMany
    private List<Image> images;

    public Instrument() { }

    public Instrument(String code, String name, String mark, String description, float price, List<Image> images) {
        this(null, code, name, mark, description, price, images);
    }

    public Instrument(Long id, String code, String name, String mark, String description, float price, List<Image> images) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.mark = mark;
        this.description = description;
        this.price = price;
        this.images = images;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Instrument that)) return false;
        return Objects.equals(id, that.id) && Objects.equals(code, that.code);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, code);
    }

    @Override
    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
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
