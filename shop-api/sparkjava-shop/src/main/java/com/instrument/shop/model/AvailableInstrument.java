package com.instrument.shop.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.List;

@Entity
@Table(name = "available_instruments")
public class AvailableInstrument extends Instrument {
    @Column(nullable = false)
    private int quantity;

    @ManyToOne
    private InstrumentType type;

    public AvailableInstrument() { }

    public AvailableInstrument(String code, String name, String mark, String description, float price, List<Image> images, int quantity, InstrumentType type) {
        this(null, code, name, mark, description, price, images, quantity, type);
    }

    public AvailableInstrument(Long id, String code, String name, String mark, String description, float price, List<Image> images, int quantity, InstrumentType type) {
        super(id, code, name, mark, description, price, images);
        this.quantity = quantity;
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public InstrumentType getType() {
        return type;
    }
}
