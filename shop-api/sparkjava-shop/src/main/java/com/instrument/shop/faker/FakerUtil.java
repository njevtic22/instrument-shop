package com.instrument.shop.faker;

import com.github.javafaker.Faker;
import com.instrument.shop.util.CycleIterator;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

public class FakerUtil {
    public static CycleIterator<String> getImageUrlIterator() throws IOException {
        BufferedReader in = new BufferedReader(new FileReader("./src/main/resources/images.txt"));
        String[] urlsTemp = new String[50];
        for (int i = 0; i < 50; i++) {
            String line = in.readLine();
            if (line.startsWith("404")) {
                break;
            }

            urlsTemp[i] = line;
        }

        in.close();
        return new CycleIterator<>(urlsTemp);
    }

    public static Iterator<String> getInstrumentTypeIterator() throws IOException {
        BufferedReader in = new BufferedReader(new FileReader("./src/main/resources/instrument types.txt"));
        ArrayList<String> typesTemp = new ArrayList<>(12);
        for (int i = 0; i < 12; i++) {
            String line = in.readLine();
            typesTemp.add(line);
        }

        in.close();
        return typesTemp.iterator();
    }

    private final static String alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private final static int n = alphabet.length();
    private final static Random rnd = new Random();           // or SecureRandom for crypto stronger generator
    public static String generateCode(Long entityId, int minLength) {
        StringBuilder code = new StringBuilder(5);
        for (int i = 0; i < minLength; i++) {
            code.append(alphabet.charAt(rnd.nextInt(n)));
        }
        code.append(entityId);
        return code.toString();
    }

    public static LocalDateTime generatePastLocalDateTime(Faker faker, LocalDateTime now) {
        return LocalDateTime.of(
                now.getYear(),                              // year
                faker.number().numberBetween(1, now.getMonthValue()),    // month
                faker.number().numberBetween(1, 28 + 1),    // dayOfMonth
                faker.number().numberBetween(9, 17 + 1),    // hour
                faker.number().numberBetween(1, 59 + 1),    // minute
                faker.number().numberBetween(1, 59 + 1)     // second

        );
    }

    public static String correctQuote(String quote, int maxQuoteLength) {
        if (quote.length() <= maxQuoteLength) {
            return escapeApostrophe(quote);
        }

        String cutQuote = quote.substring(0, maxQuoteLength);
        String correctQuote = cutQuote;

        int lastIndex = correctQuote.lastIndexOf(".");
        lastIndex = Math.max(lastIndex, correctQuote.lastIndexOf("?"));
        lastIndex = Math.max(lastIndex, correctQuote.lastIndexOf("!"));

        correctQuote = correctQuote.substring(0, lastIndex + 1);

        if (correctQuote.isBlank()) {
            correctQuote = cutQuote;
            correctQuote = correctQuote.substring(0, maxQuoteLength);
        }

        return escapeApostrophe(correctQuote);
    }

    public static String generateLoremQuote(Faker faker, String quote, int maxQuoteLength, int maxLoremLength) {
        quote = correctQuote(quote, maxQuoteLength);
        int quoteLength = quote.length() + 2;
        int remainingLoremLength = maxLoremLength - quoteLength;

        int firstHalf = remainingLoremLength / 2;
        int secondhalf = remainingLoremLength - firstHalf;      // if length is odd number

        return generateLorem(faker, firstHalf) + " " + quote + " " + generateLorem(faker, secondhalf);
    }

    public static String generateLorem(Faker faker, int length) {
        return faker.lorem().fixedString(length);
    }

    public static String escapeApostrophe(String str) {
        return str.replaceAll("'", "''");
    }
}
