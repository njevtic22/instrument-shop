package com.instrument.shop.faker;

import com.github.javafaker.Faker;
import com.instrument.shop.util.CycleIterator;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
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

    private static String alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private static Random rnd = new Random();           // or SecureRandom for crypto stronger generator
    public static String generateInstrumentCode(Long instrumentId) {
        int n = alphabet.length();
        StringBuilder code = new StringBuilder(5);
        for (int i = 0; i < 3; i++) {
            code.append(alphabet.charAt(rnd.nextInt(n)));
        }
        code.append(instrumentId);
        return code.toString();
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
