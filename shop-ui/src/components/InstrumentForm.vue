<template>
    <v-form ref="form"> {{ instrument }} </v-form>
</template>

<script setup>
import { ref, defineModel } from "vue";

const form = ref(null);
const instrument = defineModel();
</script>

<style scoped></style>
