package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "bought_instruments")
public class BoughtInstrument extends Instrument {
    @Column(nullable = false)
    private String code;

    @Column(nullable = false)
    private int owned;

    @Column(nullable = false)
    private String type;

    @Column(nullable = false)
    private LocalDateTime purchased;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;

    public BoughtInstrument() { }

    public BoughtInstrument(String code, String name, String mark, String description, float price, List<Image> images, int owned, String type, LocalDateTime purchased, User owner) {
        this(null, code, name, mark, description, price, images, owned, type, purchased, owner);
    }

    public BoughtInstrument(Long id, String code, String name, String mark, String description, float price, List<Image> images, int owned, String type, LocalDateTime purchased, User owner) {
        super(id, name, mark, description, price, images);
        this.code = Strings.requireNonBlank(code, "Code must not be blank");
        this.owned = owned;
        this.type = Strings.requireNonBlank(type, "Type must not be blank");
        this.purchased = purchased;
        this.owner = owner;
    }

    public String getCode() {
        return code;
    }

    public int getOwned() {
        return owned;
    }

    public String getType() {
        return type;
    }

    public LocalDateTime getPurchased() {
        return purchased;
    }

    public User getOwner() {
        return owner;
    }
}
