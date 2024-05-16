package com.instrument.shop.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

import java.util.Objects;

@Entity
@Table(name = "receipt_items")
public class ReceiptItem {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "receipt_item_generator")
    @SequenceGenerator(name = "receipt_item_generator", sequenceName = "receipt_item_id_seq", allocationSize = 1)
    private Long id;

    @Column(nullable = false)
    private int productQuantity;

    @ManyToOne
    @JoinColumn(name = "receipt_id")
    private Receipt receipt;

    @OneToOne
    @JoinColumn(name = "product_id")
    private BoughtInstrument product;

    public ReceiptItem() { }

    public ReceiptItem(int productQuantity, BoughtInstrument product, Receipt receipt) {
        this(null, productQuantity, receipt, product);
    }

    public ReceiptItem(Long id, int productQuantity, Receipt receipt, BoughtInstrument product) {
        this.id = id;
        this.productQuantity = productQuantity;
        this.receipt = receipt;
        this.product = product;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ReceiptItem that)) return false;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    public Long getId() {
        return id;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public BoughtInstrument getProduct() {
        return product;
    }

    public Receipt getReceipt() {
        return receipt;
    }
}
