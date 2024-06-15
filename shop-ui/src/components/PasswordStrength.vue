<template>
    <div v-for="rule in rules" :key="rule.text">
        {{ rule.text }}
        <v-icon :icon="rule.icon" :color="rule.color"></v-icon>
    </div>
</template>

<script setup>
import { ref, defineModel, watch } from "vue";
import axios from "axios";
import getAlphabeticalSequences from "@/util/validator/alphabetical-sequences";
import containsSequence from "@/util/validator/contains-sequence";
import getNumericalSequences from "@/util/validator/numerical-sequences";
import getQwertySequences from "@/util/validator/qwerty-sequences";
import specialCharsRegex from "@/util/validator/special-characters";

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

const rules = ref([
    {
        text: "Maximum 50 characters long",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = password.length <= 50;
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "Minimum 8 characters long",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = password.length >= 8;
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "At least one uppercase character",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = regs.upperCase.test(password);
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "At least one lowercase character",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = regs.lowerCase.test(password);
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "At least one digit character",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = regs.digit.test(password);
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "At least one special character",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = regs.special.test(password);
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "No alphabetical sequence",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = !containsSequence(
                password,
                illegalSequences.alphabetical
            );
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "No numrical sequence",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = !containsSequence(
                password,
                illegalSequences.numerical
            );
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "No qwerty sequence",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = !containsSequence(password, illegalSequences.qwerty);
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "No whitespace",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = regs.noWhitespace.test(password);
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
    {
        text: "No blacklisted password",
        icon: getIcon(false),
        color: getColor(false),
        validate(password) {
            const valid = !blacklist.some(
                (blacklistedPassword) => blacklistedPassword === password
            );
            this.icon = getIcon(valid);
            this.color = getColor(valid);
            return valid;
        },
    },
]);

watch(
    () => password.value,
    (newValue) => {
        let fulfilled = 0;
        let required = Object.keys(rules.value).length;

        for (let i = 0; i < rules.value.length; i++) {
            const rule = rules.value[i];
            const valid = rule.validate(newValue);
            fulfilled += Number(valid);
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
