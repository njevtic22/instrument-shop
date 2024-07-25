<template>
    <v-row>
        <v-col cols="9">
            <div v-if="isSalesman()" class="text-right pb-4">
                <v-btn color="primary">New Instrument</v-btn>
            </div>

            <v-row
                v-if="availableInstruments.data.length === 0 && !loading"
                class="mx-auto w-25"
            >
                <v-col>
                    <h3>No results</h3>
                </v-col>
            </v-row>

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
        </v-col>

        <v-col cols="3" class="fixed-form">
            <InstrumentFilter
                ref="instrumentFilter"
                @filter="applyFilter($event)"
                @clear="clearFilter"
            ></InstrumentFilter>
        </v-col>
    </v-row>

    <span ref="scrollTarget"></span>
</template>

<script setup>
import { inject, ref, onMounted, onUnmounted } from "vue";
import {
    availableInstruments,
    fetchAvailableInstruments,
    clear,
} from "@/store/availableInstrument";
import { isSalesman } from "@/store/auth";
import { useIntersectionObserver } from "@vueuse/core";

const errorSnack = inject("defaultErrorSnackbar");

const instrumentFilter = ref(null);

onMounted(() => {
    const mode = instrumentFilter.value.Modes.AVAILABLE;
    instrumentFilter.value.setMode(mode);
});

const scrollTarget = ref(null);

let page = -1;
let size = 20;
let filter = {
    name: "",
    type: "",
    mark: "",
    code: "",
    priceStart: 0,
    priceEnd: 0,
};

let sort = [];

function loadMoreInstruments() {
    if (page > availableInstruments.value.totalPages) {
        // no more data to fetch
        return;
    }

    fetchInstruments();
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
    filter.priceStart = 0;
    filter.priceEnd = 0;

    sort.length = 0;

    resetPage();
}

const isReseting = ref(false);

function resetPage() {
    isReseting.value = true;

    page = 0;
    clear();
    fetchInstruments();

    setTimeout(() => {
        isReseting.value = false;
    }, 100);
}

const loading = ref(false);

function fetchInstruments() {
    loading.value = true;
    fetchAvailableInstruments(page, size, sort, filter, errorSnack);

    setTimeout(() => {
        loading.value = false;
    }, 100);
}

useIntersectionObserver(
    scrollTarget,
    ([{ isIntersecting }]) => {
        if (isIntersecting && !isReseting.value) {
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
