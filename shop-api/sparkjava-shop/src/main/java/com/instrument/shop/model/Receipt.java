package com.instrument.shop.model;

import com.instrument.shop.util.Strings;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "receipts")
public class Receipt {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "receipt_generator")
    @SequenceGenerator(name = "receipt_generator", sequenceName = "receipt_id_seq", allocationSize = 1)
    private Long id;

    @Column(nullable = false, unique = true)
    private String code;

    @Column(nullable = false)
    private float totalPrice;

    @Column(nullable = false)
    private float paid;

    @Column(nullable = false)
    private float change;

    @Column(nullable = false)
    private LocalDateTime issuedAt;

    @OneToMany(mappedBy = "receipt")
    private List<ReceiptItem> items;

    public Receipt() { }

    public Receipt(String code, float totalPrice, float paid, float change, LocalDateTime issuedAt, List<ReceiptItem> items) {
        this(null, code, totalPrice, paid, change, issuedAt, items);
    }

    public Receipt(Long id, String code, float totalPrice, float paid, float change, LocalDateTime issuedAt, List<ReceiptItem> items) {
        this.id = id;
        this.code = Strings.requireNonBlank(code, "Code must not be blank");
        this.totalPrice = totalPrice;
        this.paid = paid;
        this.change = change;
        this.issuedAt = issuedAt;
        this.items = items;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Receipt receipt)) return false;
        return Objects.equals(id, receipt.id) && Objects.equals(code, receipt.code);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, code);
    }

    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public float getPaid() {
        return paid;
    }

    public float getChange() {
        return change;
    }

    public LocalDateTime getIssuedAt() {
        return issuedAt;
    }

    public List<ReceiptItem> getItems() {
        return items;
    }
}
