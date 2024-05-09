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
@Table(name = "images")
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "image_generator")
    @SequenceGenerator(name = "image_generator", sequenceName = "image_id_seq", allocationSize = 1)
    private Long id;

    @Column(nullable = false)
    private String url;

    @Column(nullable = false)
    private boolean archived;

    public Image() { }

    public Image(String url) {
        this(null, url, false);
    }

    public Image(Long id, String url, boolean archived) {
        this.id = id;
        this.url = Strings.requireNonBlank(url, "Url must not be blank");
        this.archived = archived;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Image image)) return false;
        return Objects.equals(id, image.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public boolean isArchived() {
        return archived;
    }
}
