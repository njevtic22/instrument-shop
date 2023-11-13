package com.instrument.shop.guiceConfig.provider;

import com.instrument.shop.core.validation.passwordRule.BlacklistRule;
import jakarta.inject.Provider;
import org.passay.CharacterRule;
import org.passay.EnglishCharacterData;
import org.passay.EnglishSequenceData;
import org.passay.IllegalSequenceRule;
import org.passay.LengthRule;
import org.passay.PasswordValidator;
import org.passay.PropertiesMessageResolver;
import org.passay.WhitespaceRule;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class PassayProvider implements Provider<PasswordValidator> {
    @Override
    public PasswordValidator get() {
        // TODO: inject these
        final String passayMessagesPath = "./src/main/resources/passay-messages.properties";

        /*
         * Blacklist source with 1_000_000 blacklisted passwords
         * https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt
         * */

        // Filtered out those blacklisted passwords which do not pass org.passay.PasswordValidator
        // whenever org.passay.PasswordValidator rules changes,
        // password-blacklist.txt must be updated (filtering out from 1_000_000  blacklisted passwords must be done)
        final String blacklistPath = "./src/main/resources/password-blacklist.txt";

        Properties messageProperties = new Properties();
        try {
            messageProperties.load(new BufferedReader(new FileReader(new File(passayMessagesPath))));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        PropertiesMessageResolver resolver = new PropertiesMessageResolver(messageProperties);

        return new PasswordValidator(
                resolver,

                new LengthRule(8, 50),
                new CharacterRule(EnglishCharacterData.UpperCase, 1),
                new CharacterRule(EnglishCharacterData.LowerCase, 1),
                new CharacterRule(EnglishCharacterData.Digit, 1),

                // ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~ ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ¬ ­ ® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿ × ÷ – — ― ‗ ‘ ’ ‚ ‛ “ ” „ † ‡ • … ‰ ′ ″ ‹ › ‼ ‾ ⁄ ⁊ ₠ ₡ ₢ ₣ ₤ ₥ ₦ ₧ ₨ ₩ ₪ ₫ € ₭ ₮ ₯ ₰ ₱ ₲ ₳ ₴ ₵ ₶ ₷ ₸ ₹ ₺ ₻ ₼ ₽ ₾
                new CharacterRule(EnglishCharacterData.Special, 1),

                new IllegalSequenceRule(EnglishSequenceData.Alphabetical, 5, false),
                new IllegalSequenceRule(EnglishSequenceData.Numerical, 5, false),
                new IllegalSequenceRule(EnglishSequenceData.USQwerty, 5, false),

                new WhitespaceRule(),

                new BlacklistRule(blacklistPath)
        );
    }
}
