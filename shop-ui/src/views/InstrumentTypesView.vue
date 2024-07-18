<template>
    {{ types }}
</template>

<script setup>
import { inject } from "vue";
import { fetchTypes, types } from "@/store/instrumentType";

const errorSnack = inject("defaultErrorSnackbar");

fetchTypes(errorSnack);
</script>

<style scoped></style>
