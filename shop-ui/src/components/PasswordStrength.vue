<template>
    <div>
        Maximum 50 characters long
        <v-icon
            :icon="getIcon(passwordRules.maxLength)"
            :color="getColor(passwordRules.maxLength)"
        ></v-icon>
    </div>
    <div>
        Minimum 8 characters long
        <v-icon
            :icon="getIcon(passwordRules.minLength)"
            :color="getColor(passwordRules.minLength)"
        ></v-icon>
    </div>
    <div>
        At least one uppercase character
        <v-icon
            :icon="getIcon(passwordRules.upperCase)"
            :color="getColor(passwordRules.upperCase)"
        ></v-icon>
    </div>
    <div>
        At least one lowercase character
        <v-icon
            :icon="getIcon(passwordRules.lowerCase)"
            :color="getColor(passwordRules.lowerCase)"
        ></v-icon>
    </div>
    <div>
        At least one digit character
        <v-icon
            :icon="getIcon(passwordRules.digit)"
            :color="getColor(passwordRules.digit)"
        ></v-icon>
    </div>
    <div>
        At least one special character
        <v-icon
            :icon="getIcon(passwordRules.special)"
            :color="getColor(passwordRules.special)"
        ></v-icon>
    </div>
    <div>
        No alphabetical sequence
        <v-icon
            :icon="getIcon(passwordRules.noAlphabetical)"
            :color="getColor(passwordRules.noAlphabetical)"
        ></v-icon>
    </div>
    <div>
        No numrical sequence
        <v-icon
            :icon="getIcon(passwordRules.noNumerical)"
            :color="getColor(passwordRules.noNumerical)"
        ></v-icon>
    </div>
    <div>
        No qwerty sequence
        <v-icon
            :icon="getIcon(passwordRules.noQwerty)"
            :color="getColor(passwordRules.noQwerty)"
        ></v-icon>
    </div>
    <div>
        No whitespace
        <v-icon
            :icon="getIcon(passwordRules.noWhitespace)"
            :color="getColor(passwordRules.noWhitespace)"
        ></v-icon>
    </div>
    <div>
        No blacklisted password
        <v-icon
            :icon="getIcon(passwordRules.noBlacklisted)"
            :color="getColor(passwordRules.noBlacklisted)"
        ></v-icon>
    </div>
</template>

<script setup>
import axios from "axios";
import getAlphabeticalSequences from "@/util/validator/alphabetical-sequences";
import containsSequence from "@/util/validator/contains-sequence";
import getNumericalSequences from "@/util/validator/numerical-sequences";
import getQwertySequences from "@/util/validator/qwerty-sequences";
import specialCharsRegex from "@/util/validator/special-characters";
import { ref, defineModel, watch } from "vue";

const password = defineModel();

const emit = defineEmits(["progress-changed", "password-valid-changed"]);

const regs = {
    upperCase: /.*[A-Z].*/,
    lowerCase: /.*[a-z].*/,
    digit: /.*[0-9].*/,
    special: specialCharsRegex,
    noWhitespace: /^\S+$/,
};

const illegalSequences = {
    alphabetical: getAlphabeticalSequences(5),
    numerical: getNumericalSequences(5),
    qwerty: getQwertySequences(5),
};

let blacklist = [];
axios
    .get(
        "https://res.cloudinary.com/example-app/raw/upload/v1718222814/musical-instruments/xt2l2e"
    )
    .then((response) => {
        blacklist = response.data;
    })
    .catch((error) => {
        console.log(error);
    });

const passwordRules = ref({
    minLength: false,
    maxLength: false,
    upperCase: false,
    lowerCase: false,
    digit: false,
    special: false,
    noAlphabetical: false,
    noNumerical: false,
    noQwerty: false,
    noWhitespace: false,
    noBlacklisted: false,
});

watch(
    () => password.value,
    (newValue) => {
        let fulfilled = 0;
        let required = Object.keys(passwordRules.value).length;

        passwordRules.value.minLength = newValue.length >= 8;
        if (passwordRules.value.minLength) {
            fulfilled += 1;
        }

        passwordRules.value.maxLength = newValue.length <= 50;
        if (passwordRules.value.maxLength) {
            fulfilled += 1;
        }

        passwordRules.value.upperCase = regs.upperCase.test(newValue);
        if (passwordRules.value.upperCase) {
            fulfilled += 1;
        }

        passwordRules.value.lowerCase = regs.lowerCase.test(newValue);
        if (passwordRules.value.lowerCase) {
            fulfilled += 1;
        }

        passwordRules.value.digit = regs.digit.test(newValue);
        if (passwordRules.value.digit) {
            fulfilled += 1;
        }

        passwordRules.value.special = regs.special.test(newValue);
        if (passwordRules.value.special) {
            fulfilled += 1;
        }

        passwordRules.value.noAlphabetical = !containsSequence(
            newValue,
            illegalSequences.alphabetical
        );
        if (passwordRules.value.noAlphabetical) {
            fulfilled += 1;
        }

        passwordRules.value.noNumerical = !containsSequence(
            newValue,
            illegalSequences.numerical
        );
        if (passwordRules.value.noNumerical) {
            fulfilled += 1;
        }

        passwordRules.value.noQwerty = !containsSequence(
            newValue,
            illegalSequences.qwerty
        );
        if (passwordRules.value.noQwerty) {
            fulfilled += 1;
        }

        passwordRules.value.noWhitespace = regs.noWhitespace.test(newValue);
        if (passwordRules.value.noWhitespace) {
            fulfilled += 1;
        }

        passwordRules.value.noBlacklisted = !blacklist.some(
            (blacklistedPassword) => blacklistedPassword === newValue
        );
        if (passwordRules.value.noBlacklisted) {
            fulfilled += 1;
        }

        const fulfilledPercent = (fulfilled / required) * 100;
        emit("progress-changed", fulfilledPercent);
        emit("password-valid-changed", fulfilledPercent === 100);
    }
);

function getIcon(isValid) {
    return isValid ? "mdi-check-bold" : "mdi-close-thick";
}

function getColor(isValid) {
    return isValid ? "green-darken-1" : "red-darken-1";
}
</script>

<style scoped></style>
