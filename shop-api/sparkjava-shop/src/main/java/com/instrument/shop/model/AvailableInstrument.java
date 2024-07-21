package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "available_instruments")
public class AvailableInstrument extends Instrument {
    @Column(nullable = false, unique = true)
    private String code;

    @Column(nullable = false)
    private int quantity;

    @Column(nullable = false)
    private boolean archived;

    @ManyToOne
    private InstrumentType type;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "carts",
            joinColumns = @JoinColumn(
                    name = "available_instrument_id",
                    referencedColumnName = "id"
            ),
            inverseJoinColumns = @JoinColumn(
                    name = "potential_customer_id",
                    referencedColumnName = "id"
            )
    )
    private List<User> potentialCustomers;

    public AvailableInstrument() { }

    public AvailableInstrument(String code, String name, String mark, String description, float price, List<Image> images, int quantity, boolean archived, InstrumentType type, List<User> potentialCustomers) {
        this(null, code, name, mark, description, price, images, quantity, archived, type, potentialCustomers);
    }

    public AvailableInstrument(Long id, String code, String name, String mark, String description, float price, List<Image> images, int quantity, boolean archived, InstrumentType type, List<User> potentialCustomers) {
        super(id, name, mark, description, price, images);
        this.code = Strings.requireNonBlank(code, "Code must not be blank");
        this.quantity = quantity;
        this.archived = archived;
        this.type = type;
        this.potentialCustomers = potentialCustomers;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AvailableInstrument that)) return false;
        if (!super.equals(o)) return false;
        return Objects.equals(code, that.code);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), code);
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isArchived() {
        return archived;
    }

    public InstrumentType getType() {
        return type;
    }

    public List<User> getPotentialCustomers() {
        return potentialCustomers;
    }
}
