package com.instrument.shop.serializers.fileDeserializers;

import com.instrument.shop.model.User;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

public abstract class FileDeserializer {
    protected final Map<String, String> filePaths;

    protected final Map<Long, User> loadedUsers;

    protected FileDeserializer(Map<String, String> filePaths, Map<Long, User> loadedUsers) {
        this.filePaths = filePaths;
        this.loadedUsers = loadedUsers;
    }

    abstract public void loadData() throws IOException;

    protected File getFile(String filePath) throws IOException {
        File requested = new File(filePath);
        if (requested.exists()) {
            if (requested.isFile()) {
                return requested;
            } else if (requested.isDirectory()) {
                throw new IllegalArgumentException("File path must represent requested, not directory");
            }
        }

        String directoryPath = filePath.substring(0, filePath.lastIndexOf("/"));
        File directory = new File(directoryPath);
        directory.mkdirs();

        String fileName = filePath.substring(filePath.lastIndexOf("/"));
        requested = new File(directory, fileName);
        requested.createNewFile();

        PrintWriter out = new PrintWriter(new FileWriter(requested));
        out.print("{}");
        out.close();

        return requested;
    }
}
