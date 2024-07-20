<template>
    <v-row>
        <v-col
            v-for="available in availableInstruments.data"
            :key="available.id"
            cols="12"
            sm="6"
            md="4"
            lg="4"
        >
            <InstrumentCard :instrument="available"></InstrumentCard>
        </v-col>
    </v-row>

    <span ref="scrollTarget"></span>
</template>

<script setup>
import { inject, ref, onUnmounted } from "vue";
import {
    availableInstruments,
    fetchAvailableInstruments,
    clear,
} from "@/store/availableInstrument";
import { useIntersectionObserver } from "@vueuse/core";

const errorSnack = inject("defaultErrorSnackbar");

const scrollTarget = ref(null);

let page = -1;
let size = 20;

function loadMoreInstruments() {
    if (page > availableInstruments.value.totalPages) {
        // no more data to fetch
        return;
    }

    fetchAvailableInstruments(page, size, errorSnack);
}

useIntersectionObserver(
    scrollTarget,
    ([{ isIntersecting }]) => {
        if (isIntersecting) {
            page++;
            loadMoreInstruments();
        }
    },
    {
        rootMargin: "400px",
    }
);

onUnmounted(() => {
    clear();
});
</script>

<style scoped></style>
