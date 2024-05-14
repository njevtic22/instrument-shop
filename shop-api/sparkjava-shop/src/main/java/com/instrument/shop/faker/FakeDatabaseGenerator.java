package com.instrument.shop.faker;

import com.github.javafaker.Faker;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.Instrument;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import com.instrument.shop.util.CycleIterator;
import com.instrument.shop.util.LongGenerator;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import static com.instrument.shop.faker.FakerUtil.correctQuote;
import static com.instrument.shop.faker.FakerUtil.generateInstrumentCode;
import static com.instrument.shop.faker.FakerUtil.getImageUrlIterator;
import static com.instrument.shop.faker.FakerUtil.getInstrumentTypeIterator;
import static com.instrument.shop.faker.SqlUtil.toSqlAlterSequenceRestart;
import static com.instrument.shop.faker.SqlUtil.toSqlInsert;

public class FakeDatabaseGenerator {
    private final Faker faker = new Faker();

    private final String LINE = "-";
    private final String LINES = LINE.repeat(200);

    private final int LOREM_LENGTH = 1000;
    private final int QUOTE_LENGTH = 900;

    private final Role[] roles = {Role.MANAGER, Role.SALESMAN, Role.CUSTOMER};
    private final int USERS_PER_ROLE = 10;
    private final int INSTRUMENT_TYPES = 12;
    private final int AVAILABLE_INSTRUMENTS_PER_TYPE = 10;
    private final int AVAILABLE_INSTRUMENTS = INSTRUMENT_TYPES * AVAILABLE_INSTRUMENTS_PER_TYPE;
    private final int IMAGES_PER_INSTRUMENT = 10;
    private final int IMAGES = roles.length * USERS_PER_ROLE + AVAILABLE_INSTRUMENTS * IMAGES_PER_INSTRUMENT;

    private final String encodedPassword = "$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6";

    private final PrintWriter out = new PrintWriter(new FileWriter("./src/main/resources/data-generated.sql"));
    private final PrintWriter imOut = new PrintWriter(new FileWriter("./src/main/resources/images-generated.sql"));

    private final CycleIterator<String> imageUrl = getImageUrlIterator();
    private final Iterator<String> instrumentType = getInstrumentTypeIterator();

    public FakeDatabaseGenerator() throws IOException {
    }

    private void generateHeader(PrintWriter out) {
        out.println("-- Passwords are hashed using BCrypt algorithm https://bcrypt-generator.com/");
        out.println("-- Passwords for all users are:");
        out.println("--");

        out.println("-- Scripts combined generates database for sparkjava-shop");
        out.println("-- It generates:");
        out.println("--\t- "   + IMAGES + " images");
        out.println("--\t- "   + roles.length * USERS_PER_ROLE + " users");
        out.println("--\t\t- " + USERS_PER_ROLE + " managers");
        out.println("--\t\t- " + USERS_PER_ROLE + " salesmen");
        out.println("--\t\t- " + USERS_PER_ROLE + " customers");
        out.println("--\t- "   + INSTRUMENT_TYPES + " instrument types");
        out.println("--\t- "   + AVAILABLE_INSTRUMENTS + " available instruments");
        out.println("--\t\t- " + AVAILABLE_INSTRUMENTS_PER_TYPE + " per type");
        out.println("--\t\t- " + IMAGES_PER_INSTRUMENT + " images for 1 available instrument");
        out.println("--");

        out.flush();
    }

    public void generate() {
        generateHeader(out);
        generateHeader(imOut);

        // inserting images
        LongGenerator imageId = new LongGenerator();
        Map<Long, Image> images = generateImages(imageId);
        // altering image_id_seq
        printSequenceRestart(IMAGES, imageId, "image_id_seq", imOut);
        Iterator<Image> imagesIterator = new ArrayList<>(images.values()).iterator();

        // inserting instrument types
        LongGenerator typeId = new LongGenerator();
        Map<Long, InstrumentType> types = generateInstrumentTypes(typeId);
        // altering instrument_type_id_seq
        printSequenceRestart(INSTRUMENT_TYPES, typeId, "instrument_type_id_seq", out);

        // inserting available instruments
        LongGenerator instrumentId = new LongGenerator();
        Map<Long, AvailableInstrument> availableInstruments = generateAvailableInstruments(instrumentId, List.copyOf(types.values()), imagesIterator);
        // altering instrument_id_seq
        printSequenceRestart(AVAILABLE_INSTRUMENTS, instrumentId, "instrument_id_seq", out);

        // inserting instrument images
        generateInstrumentImages(List.copyOf(availableInstruments.values()));

        // inserting users
        LongGenerator userId = new LongGenerator();
        Map<Long, User> users = generateUsers(userId, imagesIterator);
        // altering user_id_seq
        printSequenceRestart((long) roles.length * USERS_PER_ROLE, userId, "user_id_seq", out);

        out.close();
        imOut.close();
    }

    private Map<Long, Image> generateImages(LongGenerator imageId) {
        printStartLines("Inserting images", imOut);

        HashMap<Long, Image> images = new HashMap<>(IMAGES);
        for (int i = 0; i < IMAGES; i++) {
            Image image = new Image(
                    imageId.next(),
                    imageUrl.next(),
                    false
            );
            images.put(imageId.current(), image);
            imOut.println(toSqlInsert(image));
        }

        printEndLines(imOut);
        return images;
    }

    private Map<Long, InstrumentType> generateInstrumentTypes(LongGenerator typeId) {
        printStartLines("Inserting instrument types", out);

        HashMap<Long, InstrumentType> types = new HashMap<>(INSTRUMENT_TYPES);
        for (int i = 0; i < INSTRUMENT_TYPES; i++) {
            InstrumentType type = new InstrumentType(
                    typeId.next(),
                    instrumentType.next(),
                    false
            );
            types.put(typeId.current(), type);
            out.println(toSqlInsert(type));
        }

        printEndLines(out);
        return types;
    }

    private Map<Long, AvailableInstrument> generateAvailableInstruments(LongGenerator instrumentId, List<InstrumentType> types, Iterator<Image> images) {
        printStartLines("Inserting available instruments", out);

        HashMap<Long, AvailableInstrument> availableInstruments = new HashMap<>(AVAILABLE_INSTRUMENTS);
        for (InstrumentType type : types) {
            for (int i = 0; i < AVAILABLE_INSTRUMENTS_PER_TYPE; i++) {
                Image[] instrumentImages = new Image[IMAGES_PER_INSTRUMENT];
                for (int j = 0; j < IMAGES_PER_INSTRUMENT; j++) {
                    instrumentImages[j] = images.next();
                }

                AvailableInstrument instrument = new AvailableInstrument(
                        instrumentId.next(),
                        generateInstrumentCode(instrumentId.current()),
                        "A" + instrumentId.current() + ": " + faker.dragonBall().character(),
                        "A" + instrumentId.current() + ": " + faker.backToTheFuture().character(),
//                        generateLoremQuote(faker, faker.chuckNorris().fact(), QUOTE_LENGTH, LOREM_LENGTH),
                        correctQuote(faker.chuckNorris().fact(), QUOTE_LENGTH),
                        (float) faker.number().numberBetween(100, 1000) + 0.99f,
                        Arrays.asList(instrumentImages),
                        10,
                        type
                );
                availableInstruments.put(instrument.getId(), instrument);
                out.println(toSqlInsert(instrument));
            }
        }

        printEndLines(out);
        return availableInstruments;
    }

    private void generateInstrumentImages(List<Instrument> instruments) {
        printStartLines("Inserting instrument images", out);

        for (Instrument instrument : instruments) {
            for (Image image : instrument.getImages()) {
                out.println(toSqlInsert(instrument, image));
            }
        }

        printEndLines(out);
    }

    private Map<Long, User> generateUsers(LongGenerator userId, Iterator<Image> images) {
        printStartLines("Inserting users", out);

        HashMap<Long, User> users = new HashMap<>(roles.length * USERS_PER_ROLE);
        for (int i = 0; i < roles.length; i++) {
            Role role = roles[i];

            for (int j = 0; j < USERS_PER_ROLE; j++) {
                User user = new User(
                        userId.next(),
                        faker.name().firstName(),
                        FakerUtil.escapeApostrophe(faker.name().lastName()),
                        role.toString().toLowerCase() + (j + 1) + "@gmail.com",
                        role.toString().toLowerCase() + (j + 1),
                        encodedPassword,
                        false,
                        role,
                        images.next()
                );
                users.put(userId.current(), user);
                out.println(toSqlInsert(user));
            }

            out.println();
        }

        printEndLines(out);
        return users;
    }

    private void printSequenceRestart(final long OBJECT_NUM, LongGenerator objectId, String sequenceName, PrintWriter out) {
        if (OBJECT_NUM != objectId.current()) {
            throw new AssertionError("OBJECT_NUM != objectId.current() for: " + sequenceName);
        }

        printStartLines("Altering " + sequenceName, out);
        out.println(toSqlAlterSequenceRestart(sequenceName, OBJECT_NUM + 1));
        printEndLines(out);
    }

    private void printStartLines(String description, PrintWriter out) {
        int descLength = description.length() + 2;
        int remainingLength = LINES.length() - descLength;

        int firstHalf = remainingLength / 2;
        int secondHalf = remainingLength - firstHalf;   // if length is odd

        String line = LINE.repeat(firstHalf) + " " + description + " " + LINE.repeat(secondHalf);

        out.println(LINES);
        out.println(line);
    }

    private void printEndLines(PrintWriter out) {
        out.println(LINES);
        out.println(LINES);
        out.println();
    }

    public static void main(String[] args) throws IOException {
        new FakeDatabaseGenerator().generate();
    }
}
