<template>
    <v-row>
        <v-col cols="9">
            <v-row>
                <v-col
                    v-for="bought in boughtInstruments.data"
                    :key="bought.id"
                    cols="12"
                    sm="6"
                    md="4"
                    lg="4"
                >
                    <InstrumentCard :instrument="bought"></InstrumentCard>
                </v-col>
            </v-row>
        </v-col>

        <v-col cols="3" class="fixed-form">
            <InstrumentFilter
                @filter="applyFilter($event)"
                @clear="clearFilter"
            ></InstrumentFilter>
        </v-col>
    </v-row>

    <span ref="scrollTarget"></span>
</template>

<script setup>
import { inject, ref, onUnmounted } from "vue";
import {
    boughtInstruments,
    fetchBoughtInstruments,
    clear,
} from "@/store/boughtInstrument";
import { useIntersectionObserver } from "@vueuse/core";

const errorSnack = inject("defaultErrorSnackbar");

let page = -1;
let size = 20;
let filter = {
    name: "",
    type: "",
    mark: "",
    code: "",
    purchasedStart: null,
    purchasedEnd: null,
};

let sort = [];

const scrollTarget = ref(null);

function loadMoreInstruments() {
    if (page > boughtInstruments.value.totalPages) {
        // no more data to fetch
        return;
    }

    fetchBoughtInstruments(page, size, sort, filter, errorSnack);
}

function applyFilter(sortFilter) {
    filter = sortFilter.filter;
    sort = sortFilter.sort;

    resetPage();
}

function clearFilter() {
    filter.name = "";
    filter.type = "";
    filter.mark = "";
    filter.code = "";
    filter.purchasedStart = null;
    filter.purchasedEnd = null;

    sort.length = 0;

    resetPage();
}

let isReseting = false;

function resetPage() {
    isReseting = true;

    page = 0;
    clear();
    fetchBoughtInstruments(page, size, sort, filter, errorSnack);

    setTimeout(() => {
        isReseting = false;
    }, 100);
}

useIntersectionObserver(
    scrollTarget,
    ([{ isIntersecting }]) => {
        if (isIntersecting && !isReseting) {
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

<style scoped>
.fixed-form {
    position: fixed;
    right: 0;
    width: 21%;
}
</style>
