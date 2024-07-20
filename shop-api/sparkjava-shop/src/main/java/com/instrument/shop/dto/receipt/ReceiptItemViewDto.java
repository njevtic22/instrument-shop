package com.instrument.shop.dto.receipt;

import java.util.Objects;

public final class ReceiptItemViewDto {
    private final Long id;
    private final int productQuantity;
    private final Long productId;
    private final String productName;
    private final float productPrice;

    public ReceiptItemViewDto(Long id, int productQuantity, Long productId, String productName, float productPrice) {
        this.id = id;
        this.productQuantity = productQuantity;
        this.productId = productId;
        this.productName = productName;
        this.productPrice = productPrice;
    }

    public Long id() {
        return id;
    }

    public int productQuantity() {
        return productQuantity;
    }

    public Long productId() {
        return productId;
    }

    public String productName() {
        return productName;
    }

    public float productPrice() {
        return productPrice;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (ReceiptItemViewDto) obj;
        return Objects.equals(this.id, that.id) &&
                this.productQuantity == that.productQuantity &&
                Objects.equals(this.productId, that.productId) &&
                Objects.equals(this.productName, that.productName) &&
                Float.floatToIntBits(this.productPrice) == Float.floatToIntBits(that.productPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, productQuantity, productId, productName, productPrice);
    }

    @Override
    public String toString() {
        return "ReceiptItemViewDto[" +
                "id=" + id + ", " +
                "productQuantity=" + productQuantity + ", " +
                "productId=" + productId + ", " +
                "productName=" + productName + ", " +
                "productPrice=" + productPrice + ']';
    }

}
