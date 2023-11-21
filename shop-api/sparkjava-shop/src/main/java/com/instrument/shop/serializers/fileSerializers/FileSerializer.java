package com.instrument.shop.serializers.fileSerializers;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

public interface FileSerializer<ID, T> {
    void serialize(Map<ID, T> data) throws IOException;

    default void writeToFile(String filePath, String content) throws IOException {
        PrintWriter out = new PrintWriter(new FileWriter(filePath));
        out.write(content);
        out.close();
    }
}
