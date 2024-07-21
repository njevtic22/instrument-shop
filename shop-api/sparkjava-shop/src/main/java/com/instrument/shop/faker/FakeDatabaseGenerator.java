package com.instrument.shop.faker;

import com.github.javafaker.Faker;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.model.BoughtInstrument;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.Instrument;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.model.ReceiptItem;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import com.instrument.shop.util.CycleIterator;
import com.instrument.shop.util.LongGenerator;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import static com.instrument.shop.faker.FakerUtil.generateCode;
import static com.instrument.shop.faker.FakerUtil.generateLoremQuote;
import static com.instrument.shop.faker.FakerUtil.generatePastLocalDateTime;
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
    private final int AVAILABLE_INSTRUMENTS_PER_TYPE = 100;
    private final int AVAILABLE_INSTRUMENTS = INSTRUMENT_TYPES * AVAILABLE_INSTRUMENTS_PER_TYPE;
    private final int AVAILABLE_INSTRUMENTS_QUANTITY = 20;

    private final int MAX_TO_OWN = 15;
    private final int PAID = 1000 * MAX_TO_OWN;
    private final int RECEIPTS_PER_CUSTOMER = 10;
    private final int ITEMS_PER_RECEIPT = 10;
    private final int RECEIPTS = RECEIPTS_PER_CUSTOMER * USERS_PER_ROLE;
    private final int ITEMS = ITEMS_PER_RECEIPT * RECEIPTS;
    private final int BOUGHT_INSTRUMENTS_PER_CUSTOMER = RECEIPTS_PER_CUSTOMER * ITEMS_PER_RECEIPT;
    private final int BOUGHT_INSTRUMENTS = BOUGHT_INSTRUMENTS_PER_CUSTOMER * USERS_PER_ROLE;
    private final int CART_SIZE_PER_CUSTOMER = 10;

    private final int IMAGES_PER_INSTRUMENT = 10;
    private final int IMAGES = roles.length * USERS_PER_ROLE + AVAILABLE_INSTRUMENTS * IMAGES_PER_INSTRUMENT + BOUGHT_INSTRUMENTS * IMAGES_PER_INSTRUMENT;

    private final String encodedPassword = "$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6";

    private final PrintWriter userOut = new PrintWriter(new FileWriter("./src/main/resources/database/users-generated.sql"));
    private final PrintWriter imOut = new PrintWriter(new FileWriter("./src/main/resources/database/images-generated.sql"));
    private final PrintWriter instrumentOut = new PrintWriter(new FileWriter("./src/main/resources/database/instruments-generated.sql"));
    private final PrintWriter boughtOut = new PrintWriter(new FileWriter("./src/main/resources/database/bought-instruments-generated.sql"));
    private final PrintWriter receiptCartOut = new PrintWriter(new FileWriter("./src/main/resources/database/receipts-carts-generated.sql"));

    private final CycleIterator<String> imageUrl = getImageUrlIterator();
    private final Iterator<String> instrumentType = getInstrumentTypeIterator();

    public FakeDatabaseGenerator() throws IOException {
    }

    private void generateHeader(PrintWriter out) {
        out.println("-- Passwords are hashed using BCrypt algorithm https://bcrypt-generator.com/");
        out.println("-- Passwords for all users are:");
        out.println("--");

        out.println("-- Scripts combined generate database for sparkjava-shop");
        out.println("-- It generates:");
        out.println("--\t- "   + IMAGES + " images");
        out.println("--\t- "   + roles.length * USERS_PER_ROLE + " users");
        out.println("--\t\t- " + USERS_PER_ROLE + " managers");
        out.println("--\t\t- " + USERS_PER_ROLE + " salesmen");
        out.println("--\t\t- " + USERS_PER_ROLE + " customers");
        out.println("--\t\t- " + "with " + CART_SIZE_PER_CUSTOMER + " instruments in cart");
        out.println("--\t- "   + INSTRUMENT_TYPES + " instrument types");
        out.println("--\t- "   + AVAILABLE_INSTRUMENTS + " available instruments");
        out.println("--\t\t- " + AVAILABLE_INSTRUMENTS_PER_TYPE + " per type");
        out.println("--\t\t- " + IMAGES_PER_INSTRUMENT + " images for 1 available instrument");
        out.println("--\t- "   + BOUGHT_INSTRUMENTS + " bought instruments");
        out.println("--\t\t- " + BOUGHT_INSTRUMENTS_PER_CUSTOMER + " per customer");
        out.println("--\t\t- " + IMAGES_PER_INSTRUMENT + " images for 1 bought instrument");
        out.println("--\t- "   + RECEIPTS + " receipts");
        out.println("--\t\t- " + RECEIPTS_PER_CUSTOMER + " per customer");
        out.println("--\t- "   + ITEMS + " receipt items");
        out.println("--\t\t- " + ITEMS_PER_RECEIPT + " per receipt");
        out.println("--");

        out.flush();
    }

    public void generate() throws NoSuchFieldException, IllegalAccessException {
        generateHeader(userOut);
        generateHeader(imOut);
        generateHeader(instrumentOut);
        generateHeader(boughtOut);
        generateHeader(receiptCartOut);


        // generating images
        LongGenerator imageId = new LongGenerator();
        Map<Long, Image> images = generateImages(imageId);
        Iterator<Image> imagesIterator = new ArrayList<>(images.values()).iterator();


        // generating instrument types
        LongGenerator typeId = new LongGenerator();
        Map<Long, InstrumentType> types = generateInstrumentTypes(typeId);


        // generating available instruments
        LongGenerator instrumentId = new LongGenerator();
        Map<Long, AvailableInstrument> availableInstruments = generateAvailableInstruments(instrumentId, List.copyOf(types.values()), imagesIterator);


        // generating users
        LongGenerator userId = new LongGenerator();
        Map<Long, User> users = generateUsers(userId, imagesIterator);


        // generating bought instruments
        Map<Long, BoughtInstrument> boughtInstruments = generateBoughtInstruments(
                instrumentId,
                availableInstruments,
                users,
                imagesIterator
        );

        // generating receipts and receipt items
        LongGenerator receiptId = new LongGenerator();
        LongGenerator itemId = new LongGenerator();
        HashMap<Long, Receipt> receipts = new HashMap<>();
        HashMap<Long, ReceiptItem> items = new HashMap<>();
        generateReceipts(receiptId, itemId, receipts, items, users);


        // generate cart
        generateCart(users, availableInstruments);


        //////////

        // inserting images
        printToSqlInsert(images.values(), "Inserting images", imOut, SqlUtil::toSqlInsert);
        // altering image_id_seq
        printSequenceRestart(IMAGES, imageId, "image_id_seq", imOut);


        // inserting instrument types
        printToSqlInsert(types.values(), "Inserting instrument types", instrumentOut, SqlUtil::toSqlInsert);
        // altering instrument_type_id_seq
        printSequenceRestart(INSTRUMENT_TYPES, typeId, "instrument_type_id_seq", instrumentOut);


        // inserting available instruments
        printToSqlInsert(availableInstruments.values(), "Inserting available instruments", instrumentOut, SqlUtil::toSqlInsert);
        // inserting instrument images
        printInstrumentImages(List.copyOf(availableInstruments.values()), instrumentOut);


        // inserting users
        printToSqlInsert(users.values(), "Inserting users", userOut, SqlUtil::toSqlInsert);
        // altering user_id_seq
        printSequenceRestart((long) roles.length * USERS_PER_ROLE, userId, "user_id_seq", userOut);


        // inserting bought instruments
        printToSqlInsert(boughtInstruments.values(), "Inserting bought instruments", boughtOut, SqlUtil::toSqlInsert);
        // altering instrument_id_seq
        printSequenceRestart(AVAILABLE_INSTRUMENTS + BOUGHT_INSTRUMENTS, instrumentId, "instrument_id_seq", boughtOut);
        // inserting instrument images
        printInstrumentImages(List.copyOf(boughtInstruments.values()), boughtOut);


        // inserting receipts
        printToSqlInsert(receipts.values(), "Inserting receipts", receiptCartOut, SqlUtil::toSqlInsert);
        // altering receipt_iq_seq
        printSequenceRestart(RECEIPTS, receiptId, "receipt_id_seq", receiptCartOut);


        // inserting receipt items
        printToSqlInsert(items.values(), "Inserting receipt items", receiptCartOut, SqlUtil::toSqlInsert);
        // altering receipt_item_id_seq
        printSequenceRestart(ITEMS, itemId, "receipt_item_id_seq", receiptCartOut);


        // inserting users available instruments
        printCart(users, receiptCartOut);

        userOut.close();
        imOut.close();
        instrumentOut.close();
        boughtOut.close();
        receiptCartOut.close();
    }

    private Map<Long, Image> generateImages(LongGenerator imageId) {
        HashMap<Long, Image> images = new HashMap<>(IMAGES);
        for (int i = 0; i < IMAGES; i++) {
            Image image = new Image(
                    imageId.next(),
                    imageUrl.next(),
                    false
            );
            images.put(imageId.current(), image);
        }
        return images;
    }

    private Map<Long, InstrumentType> generateInstrumentTypes(LongGenerator typeId) {
        HashMap<Long, InstrumentType> types = new HashMap<>(INSTRUMENT_TYPES);
        for (int i = 0; i < INSTRUMENT_TYPES; i++) {
            InstrumentType type = new InstrumentType(
                    typeId.next(),
                    instrumentType.next(),
                    false
            );
            types.put(typeId.current(), type);
        }
        return types;
    }

    private Map<Long, AvailableInstrument> generateAvailableInstruments(LongGenerator instrumentId, List<InstrumentType> types, Iterator<Image> images) {

        HashMap<Long, AvailableInstrument> availableInstruments = new HashMap<>(AVAILABLE_INSTRUMENTS);
        for (InstrumentType type : types) {
            for (int i = 0; i < AVAILABLE_INSTRUMENTS_PER_TYPE; i++) {
                Image[] instrumentImages = new Image[IMAGES_PER_INSTRUMENT];
                for (int j = 0; j < IMAGES_PER_INSTRUMENT; j++) {
                    instrumentImages[j] = images.next();
                }

                AvailableInstrument instrument = new AvailableInstrument(
                        instrumentId.next(),
                        generateCode(instrumentId.current(), 3),
                        faker.music().instrument() + ": " + instrumentId.current(),
                        faker.dragonBall().character() + ": " + instrumentId.current(),
                        generateLoremQuote(faker, faker.chuckNorris().fact(), QUOTE_LENGTH, LOREM_LENGTH),
                        (float) faker.number().numberBetween(100, 1000) + 0.99f,
                        Arrays.asList(instrumentImages),
                        AVAILABLE_INSTRUMENTS_QUANTITY,
                        false,
                        type,
                        new ArrayList<>()
                );
                availableInstruments.put(instrument.getId(), instrument);
            }
        }
        return availableInstruments;
    }

    private Map<Long, User> generateUsers(LongGenerator userId, Iterator<Image> images) {

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
                        images.next(),
                        new ArrayList<>(),
                        new ArrayList<>()
                );
                users.put(userId.current(), user);
            }

        }
        return users;
    }

    private Map<Long, BoughtInstrument> generateBoughtInstruments(LongGenerator instrumentId, Map<Long, AvailableInstrument> availableInstruments, Map<Long, User> users, Iterator<Image> images) throws NoSuchFieldException, IllegalAccessException {
        HashMap<Long, BoughtInstrument> boughtInstruments = new HashMap<>(BOUGHT_INSTRUMENTS);
        List<User> customers = users.values()
                .stream()
                .filter(User::isCustomer)
                .toList();

        ArrayList<AvailableInstrument> remaining = new ArrayList<>(availableInstruments.values());

        Class<Image> imageClass = Image.class;
        Field urlField = imageClass.getDeclaredField("url");
        urlField.setAccessible(true);

        for (User customer : customers) {
            for (int i = 0; i < BOUGHT_INSTRUMENTS_PER_CUSTOMER; i++) {
                AvailableInstrument available = remaining.remove(faker.number().numberBetween(0, remaining.size()));
                Image[] instrumentImages = new Image[IMAGES_PER_INSTRUMENT];
                for (int k = 0; k < IMAGES_PER_INSTRUMENT; k++) {
                    instrumentImages[k] = images.next();
                    urlField.set(instrumentImages[k], available.getImages().get(k).getUrl());
                }

                int toOwn = faker.number().numberBetween(1, MAX_TO_OWN);


                BoughtInstrument bought = new BoughtInstrument(
                        instrumentId.next(),
                        available.getCode(),
                        available.getName(),
                        available.getMark(),
                        available.getDescription(),
                        available.getPrice(),
                        Arrays.asList(instrumentImages),
                        toOwn,
                        available.getType().getName(),
                        null,
                        customer
                );
                customer.getBought().add(bought);
                boughtInstruments.put(bought.getId(), bought);

                available.setQuantity(available.getQuantity() - toOwn);
            }
        }

        return boughtInstruments;
    }

    private void generateReceipts(LongGenerator receiptId, LongGenerator itemId, HashMap<Long, Receipt> receipts, HashMap<Long, ReceiptItem> items, Map<Long, User> users) throws NoSuchFieldException, IllegalAccessException {
        List<User> customers = users.values()
                .stream()
                .filter(User::isCustomer)
                .toList();

        Class<BoughtInstrument> boughtClass = BoughtInstrument.class;
        Field purchasedField = boughtClass.getDeclaredField("purchased");
        purchasedField.setAccessible(true);

        for (User customer : customers) {
            List<BoughtInstrument> remaining = new ArrayList<>(customer.getBought());
            for (int i = 0; i < RECEIPTS_PER_CUSTOMER; i++) {
                float totalPrice = 0;
                Receipt dummy = new Receipt();
                ArrayList<ReceiptItem> receiptItems = new ArrayList<>(ITEMS_PER_RECEIPT);

                LocalDateTime issuedAt = generatePastLocalDateTime(faker, LocalDateTime.now());

                for (int j = 0; j < ITEMS_PER_RECEIPT; j++) {
                    BoughtInstrument bought = remaining.remove(faker.number().numberBetween(0, remaining.size()));
                    purchasedField.set(bought, issuedAt);

                    totalPrice += bought.getPrice();
                    ReceiptItem item = new ReceiptItem(
                            itemId.next(),
                            bought.getOwned(),
                            dummy,
                            bought
                    );
                    receiptItems.add(item);
                    items.put(item.getId(), item);
                }

                totalPrice = Math.round(totalPrice) + 0.99f;

                Receipt receipt = new Receipt(
                        receiptId.next(),
                        generateCode(receiptId.current(), 4),
                        totalPrice,
                        PAID,
                        PAID - totalPrice,
                        issuedAt,
                        receiptItems
                );
                receipts.put(receipt.getId(), receipt);

                for (ReceiptItem item : receiptItems) {
                    item.setReceipt(receipt);
                }
            }
        }
    }

    private void generateCart(Map<Long, User> users, Map<Long, AvailableInstrument> instruments) {
        List<User> customers = users.values()
                .stream()
                .filter(User::isCustomer)
                .toList();

        for (User customer : customers) {
            for (int i = 0; i < CART_SIZE_PER_CUSTOMER; i++) {
                int availableId = faker.number().numberBetween(1, AVAILABLE_INSTRUMENTS);
                AvailableInstrument available = instruments.get((long) availableId);
                customer.getCart().add(available);
                available.getPotentialCustomers().add(customer);
            }
        }
    }

    private void printCart(Map<Long, User> users, PrintWriter out) {
        printStartLines("Carts", out);

        List<User> customers = users.values()
                .stream()
                .filter(User::isCustomer)
                .toList();

        for (User customer : customers) {
            for (AvailableInstrument instrument : customer.getCart()) {
                out.println(toSqlInsert(customer, instrument));
            }
        }

        printEndLines(out);
    }

    private void printInstrumentImages(List<Instrument> instruments, PrintWriter out) {
        printStartLines("Inserting instrument images", out);

        for (Instrument instrument : instruments) {
            for (Image image : instrument.getImages()) {
                out.println(toSqlInsert(instrument, image));
            }
        }

        printEndLines(out);
    }

    private <T> void printToSqlInsert(Collection<T> values, String linesDescription, PrintWriter out, Function<T, String> fun) {
        printStartLines(linesDescription, out);

        for (T value : values) {
            out.println(fun.apply(value));
        }

        printEndLines(out);
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

    public static void main(String[] args) throws IOException, NoSuchFieldException, IllegalAccessException {
        new FakeDatabaseGenerator().generate();
    }
}
