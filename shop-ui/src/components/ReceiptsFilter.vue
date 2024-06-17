<template>
    <v-row>
        <v-col>
            <v-text-field
                v-model="filter.code"
                class="py-2"
                density="compact"
                placeholder="Search code"
                hide-details
            ></v-text-field>
            <div class="py-2">
                <v-btn @click="emitFilter" color="primary" block>Apply</v-btn>
            </div>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.priceStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum price"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.priceEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum price"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.paidStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum paid"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.paidEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum paid"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.changeStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum change"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.changeEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum change"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.issuedAtStart"
                class="py-2"
                density="compact"
                placeholder="Start issued at"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.issuedAtEnd"
                class="py-2"
                density="compact"
                placeholder="End issued at"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
    </v-row>
</template>

<script setup>
import { ref } from "vue";

const emit = defineEmits(["filter"]);

const filter = ref({
    code: "",
    priceStart: "",
    priceEnd: "",
    paidStart: "",
    paidEnd: "",
    changeStart: "",
    changeEnd: "",
    issuedAtStart: "",
    issuedAtEnd: "",
});

function validateDigit(event) {
    if (event.key === "Backspace") {
        return;
    }

    if (event.key === " " || isNaN(Number(event.key))) {
        event.preventDefault();
    }
}

function emitFilter() {
    emit("filter", { ...filter.value });
}
</script>

<style scoped></style>
