package com.instrument.shop.faker;

import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.Instrument;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.model.User;

public class SqlUtil {
    public static String toSqlInsert(User user) {
        Long imageId = user.getImage() == null ? null : user.getImage().getId();
        return "insert into users (id, name, surname, email, username, password, archived, role, image_id) values (" +
                user.getId() + ", '" +
                user.getName() + "', '" +
                user.getSurname() + "', '" +
                user.getEmail() + "', '" +
                user.getUsername() + "', '" +
                user.getPassword() + "', " +
                user.isArchived() + ", '" +
                user.getRole().toString() + "', " +
                imageId + ");";
    }

    public static String toSqlInsert(Image image) {
        return "insert into images (id, url, archived) values (" +
                image.getId() + ", '" +
                image.getUrl() + "', " +
                image.isArchived() + ");";
    }

    public static String toSqlInsert(InstrumentType type) {
        return "insert into instrument_types (id, name, archived) values (" +
                type.getId() + ", '" +
                type.getName() + "', " +
                type.isArchived() + ");";
    }

    public static String toSqlInsert(AvailableInstrument instrument) {
        return "insert into available_instruments (id, code, name, mark, description, price, quantity, archived, type_id) values (" +
                instrument.getId() + ", '" +
                instrument.getCode() + "', '" +
                instrument.getName() + "', '" +
                instrument.getMark() + "', '" +
                instrument.getDescription() + "', " +
                instrument.getPrice() + ", " +
                instrument.getQuantity() + ", " +
                instrument.isArchived() + ", " +
                instrument.getType().getId() + ");";
    }

    public static String toSqlInsert(BoughtInstrument instrument) {
        return "insert into bought_instruments (id, code, name, mark, description, price, owned, type, purchased, owner_id) values (" +
                instrument.getId() + ", '" +
                instrument.getCode() + "', '" +
                instrument.getName() + "', '" +
                instrument.getMark() + "', '" +
                instrument.getDescription() + "', " +
                instrument.getPrice() + ", " +
                instrument.getOwned() + ", '" +
                instrument.getType() + "', '" +
                instrument.getPurchased() + "', " +
                instrument.getOwner().getId() + ");";
    }

    public static String toSqlInsert(Instrument instrument, Image image) {
        return "insert into instrument_images (instrument_id, images_id) values (" + instrument.getId() + ", " + image.getId() + ");";
    }

    public static String toSqlInsert(Receipt receipt) {
        return "insert into receipts (id, code, total_price, paid, change, issued_at) values (" +
                receipt.getId() + ", '" +
                receipt.getCode() + "', " +
                receipt.getTotalPrice()  + ", " +
                receipt.getPaid() + ", " +
                receipt.getChange() + ", '" +
                receipt.getIssuedAt() + "');";
    }

    public static String toSqlInsert(ReceiptItem item) {
        return "insert into receipt_items (id, product_quantity, receipt_id, product_id) values (" +
                item.getId() + ", " +
                item.getProductQuantity() + ", " +
                item.getReceipt().getId() + ", " +
                item.getProduct().getId() + ");";
    }

    public static String toSqlInsert(User customer, AvailableInstrument instrument) {
        return "insert into users_available_instruments (user_id, cart_id) values (" +
                customer.getId() + ", " +
                instrument.getId() + ")";
    }

    public static String toSqlAlterSequenceRestart(String sequenceName, long restartWith) {
        return "alter sequence " + sequenceName + " restart with " + restartWith + ";";
    }
}
