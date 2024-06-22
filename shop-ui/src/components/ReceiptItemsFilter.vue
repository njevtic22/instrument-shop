<template>
    <v-row>
        <v-col>
            <v-text-field
                v-model="filter.productName"
                class="py-2"
                density="compact"
                placeholder="Search name"
                hide-details
            ></v-text-field>
            <div class="py-2">
                <v-btn @click="emitFilter" color="primary" block>Apply</v-btn>
            </div>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.productPriceStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum price"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.productPriceEnd"
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
                v-model="filter.productQuantityStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum quantity"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.productQuantityEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum quantity"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col> </v-col>
    </v-row>
</template>

<script setup>
import { ref } from "vue";

const emit = defineEmits(["filter"]);

const filter = ref({
    productName: "",
    productPriceStart: "",
    productPriceEnd: "",
    productQuantityStart: "",
    productQuantityEnd: "",
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
