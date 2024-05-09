package com.instrument.shop.faker;

import com.instrument.shop.model.Image;
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

    public static String toSqlAlterSequenceRestart(String sequenceName, long restartWith) {
        return "alter sequence " + sequenceName + " restart with " + restartWith + ";";
    }
}
