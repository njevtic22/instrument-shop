package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.List;

@Entity
@Table(name = "bought_instruments")
public class BoughtInstrument extends Instrument {
    @Column(nullable = false)
    private int owned;

    @Column(nullable = false)
    private String type;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;

    public BoughtInstrument() { }

    public BoughtInstrument(String code, String name, String mark, String description, float price, List<Image> images, int owned, String type, User owner) {
        this(null, code, name, mark, description, price, images, owned, type, owner);
    }

    public BoughtInstrument(Long id, String code, String name, String mark, String description, float price, List<Image> images, int owned, String type, User owner) {
        super(id, code, name, mark, description, price, images);
        this.owned = owned;
        this.type = Strings.requireNonBlank(type, "Type must not be blank");
        this.owner = owner;
    }

    public int getOwned() {
        return owned;
    }

    public String getType() {
        return type;
    }

    public User getOwner() {
        return owner;
    }
}
