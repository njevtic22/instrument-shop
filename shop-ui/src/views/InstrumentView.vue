<template>
    <h1>Instrument with id: {{ $route.params.id }}</h1>
    {{ $route.query }}
    {{ instrument }}
</template>

<script setup>
import { fetchAvailableInstrument } from "@/store/availableInstrument";
import { fetchBoughtInstrument } from "@/store/boughtInstrument";
import { inject, ref } from "vue";
import { useRoute } from "vue-router";

const route = useRoute();
const errorSnack = inject("defaultErrorSnackbar");

const instrument = ref({
    id: -1,
    code: "",
    name: "",
    mark: "",
    description: "",
    price: -1,
    images: {
        id: -1,
        url: "",
    },
    type: "",

    quantity: -1,

    owned: -1,
    purchased: [0, 0, 0, 0, 0, 0, 0],
});

function fetchInstrument() {
    if (route.query.type === "available") {
        fetchA();
    } else if (route.query.type === "bought") {
        fetchB();
    } else {
        console.error(
            "Error: wrong instrument availability type: " + route.query.type
        );
    }
}
fetchInstrument();

function fetchA() {
    const successCallback = (response) => {
        instrument.value = response.data;
    };
    fetchAvailableInstrument(route.params.id, successCallback, errorSnack);
}

function fetchB() {
    const successCallback = (response) => {
        instrument.value = response.data;
    };
    fetchBoughtInstrument(route.params.id, successCallback, errorSnack);
}

function isBought() {
    return Boolean(route.query.type === "bought");
}

function isAvailable() {
    return Boolean(route.query.type === "available");
}
</script>

<style scoped></style>
