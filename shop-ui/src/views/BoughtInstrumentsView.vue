<template>
    {{ boughtInstruments }}
</template>

<script setup>
import { inject } from "vue";
import {
    boughtInstruments,
    fetchBoughtInstruments,
} from "@/store/boughtInstrument";

const errorSnack = inject("defaultErrorSnackbar");

fetchBoughtInstruments(errorSnack);
</script>

<style scoped></style>
