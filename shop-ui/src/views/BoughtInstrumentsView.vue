<template>
    <v-row>
        <v-col cols="9">
            <v-row
                v-if="
                    boughtInstruments.data.length === 0 &&
                    !isReseting &&
                    page >= 0
                "
                class="mx-auto w-25"
            >
                <v-col>
                    <h3>No results</h3>
                </v-col>
            </v-row>

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
    boughtInstruments,
    fetchBoughtInstruments,
    clear,
} from "@/store/boughtInstrument";
import { useIntersectionObserver } from "@vueuse/core";

const errorSnack = inject("defaultErrorSnackbar");

const instrumentFilter = ref(null);

onMounted(() => {
    const mode = instrumentFilter.value.Modes.BOUGHT;
    instrumentFilter.value.setMode(mode);
});

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

const isReseting = ref(false);

function resetPage() {
    isReseting.value = true;

    page = 0;
    clear();
    fetchBoughtInstruments(page, size, sort, filter, errorSnack);

    setTimeout(() => {
        isReseting.value = false;
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
