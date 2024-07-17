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
                    <v-card @click="redirect(bought.id)" hover>
                        <v-carousel
                            @click="handleClick"
                            hide-delimiters
                            show-arrows="hover"
                            height="250px"
                        >
                            <v-carousel-item
                                v-for="image in bought.images"
                                :key="image.id"
                                :src="image.url"
                            >
                            </v-carousel-item>
                        </v-carousel>

                        <v-card-item>
                            <v-card-title>{{ bought.name }}</v-card-title>
                            <v-card-subtitle>
                                Type: {{ bought.type }}
                            </v-card-subtitle>
                            <v-card-subtitle>
                                Mark: {{ bought.mark }}
                            </v-card-subtitle>
                        </v-card-item>

                        <v-card-text>
                            <div v-if="isCustomer()">
                                Owned: {{ bought.owned }}
                            </div>
                            <!-- Id {{ bought.id }}
                            <br /> -->
                            Code: {{ bought.code }}
                            <br />
                            Purchased: {{ formatDateTime(bought.purchased) }}
                        </v-card-text>
                    </v-card>
                </v-col>
            </v-row>
        </v-col>

        <v-col cols="3" class="fixed-form">
            <v-form>
                <h2>Filter</h2>
                <v-text-field
                    v-model="filterData.name"
                    label="Name"
                    bg-color="white"
                ></v-text-field>
                <v-text-field
                    v-model="filterData.type"
                    label="Type"
                    bg-color="white"
                ></v-text-field>
                <v-text-field
                    v-model="filterData.mark"
                    label="Mark"
                    bg-color="white"
                ></v-text-field>
                <v-text-field
                    v-model="filterData.code"
                    label="Code"
                    bg-color="white"
                ></v-text-field>
                <v-row>
                    <v-col>
                        <v-date-input
                            v-model="filterData.purchasedStart"
                            @keydown="$event.preventDefault()"
                            @click:clear="filterData.purchasedStart = null"
                            label="Date from"
                            bg-color="white"
                            clearable
                        ></v-date-input>
                    </v-col>
                    <v-col>
                        <v-date-input
                            v-model="filterData.purchasedEnd"
                            @keydown="$event.preventDefault()"
                            @click:clear="filterData.purchasedEnd = null"
                            label="Date to"
                            bg-color="white"
                            clearable
                        ></v-date-input>
                    </v-col>
                </v-row>

                <h2>Sort</h2>
                <v-select
                    v-model="sort"
                    :items="filteredItems"
                    :item-props="itemProps"
                    @update:model-value="updateSortItems"
                    placeholder="Sort"
                    bg-color="white"
                    multiple
                    clearable
                >
                    <template v-slot:selection="{ item, index }">
                        <v-chip v-if="index < 1">
                            <span>{{ item.title }}</span>
                        </v-chip>
                        <span
                            v-if="index === 1"
                            class="text-grey text-caption align-self-center"
                        >
                            (+{{ sort.length - 1 }} others)
                        </span>
                    </template>
                </v-select>

                <v-btn @click="applyFilter" color="primary">Apply</v-btn>
                <v-btn @click="clearFilter" variant="outlined" class="ml-2">
                    Reset
                </v-btn>
            </v-form>
        </v-col>
    </v-row>

    <span ref="scrollTarget"></span>
</template>

<script setup>
import { inject, ref, onUnmounted, computed } from "vue";
import { useRouter } from "vue-router";
import { isCustomer } from "@/store/auth";
import {
    boughtInstruments,
    fetchBoughtInstruments,
    clear,
} from "@/store/boughtInstrument";
import { formatDateTime, toEpochMilli } from "@/util/date";
import { useIntersectionObserver } from "@vueuse/core";

const router = useRouter();
const errorSnack = inject("defaultErrorSnackbar");

let page = -1;
let size = 20;
let filter = {};

const filterData = ref({
    name: "",
    type: "",
    mark: "",
    code: "",
    purchasedStart: null,
    purchasedEnd: null,
});

const sort = ref([]);

const sortItems = ref({
    1: {
        show: true,
        index: 0,
        title: "Name,asc",
        value: {
            key: "name",
            order: "asc",
            pairedKey: 2,
        },
    },
    2: {
        show: true,
        index: 0,
        title: "Name,desc",
        value: {
            key: "name",
            order: "desc",
            pairedKey: 1,
        },
    },
    3: {
        show: true,
        index: 0,
        title: "Type,asc",
        value: {
            key: "type",
            order: "asc",
            pairedKey: 4,
        },
    },
    4: {
        show: true,
        index: 0,
        title: "Type,desc",
        value: {
            key: "type",
            order: "desc",
            pairedKey: 3,
        },
    },
    5: {
        show: true,
        index: 0,
        title: "Mark,asc",
        value: {
            key: "mark",
            order: "asc",
            pairedKey: 6,
        },
    },
    6: {
        show: true,
        index: 0,
        title: "Mark,desc",
        value: {
            key: "mark",
            order: "desc",
            pairedKey: 5,
        },
    },
    7: {
        show: true,
        index: 0,
        title: "Code,asc",
        value: {
            key: "code",
            order: "asc",
            pairedKey: 8,
        },
    },
    8: {
        show: true,
        index: 0,
        title: "Code,desc",
        value: {
            key: "code",
            order: "desc",
            pairedKey: 7,
        },
    },
    9: {
        show: true,
        index: 0,
        title: "Purchased,asc",
        value: {
            key: "purchased",
            order: "asc",
            pairedKey: 10,
        },
    },
    10: {
        show: true,
        index: 0,
        title: "Purchased,desc",
        value: {
            key: "purchased",
            order: "desc",
            pairedKey: 9,
        },
    },
});

const filteredItems = computed(() => {
    return Object.values(sortItems.value).filter((item) => item.show);
});

function itemProps(item) {
    return {
        title: item.index === 0 ? item.title : item.title + " " + item.index,
    };
}

function updateSortItems(selected) {
    Object.values(sortItems.value).forEach((item) => {
        item.show = true;
        item.index = 0;
    });

    selected.forEach((selectValue, index) => {
        const paired = sortItems.value[selectValue.pairedKey];
        paired.show = false;

        const select = sortItems.value[paired.value.pairedKey];
        select.index = index + 1;
    });
}

const scrollTarget = ref(null);

function loadMoreInstruments() {
    if (page > boughtInstruments.value.totalPages) {
        // no more data to fetch
        return;
    }

    console.log(filter);
    fetchBoughtInstruments(page, size, sort.value, errorSnack);
}

function applyFilter() {
    filter = { ...filterData.value };
    filter.purchasedStart = filter.purchasedStart
        ? toEpochMilli(filter.purchasedStart)
        : null;

    filter.purchasedEnd = filter.purchasedEnd
        ? toEpochMilli(filter.purchasedEnd)
        : null;

    resetPage();
}

function clearFilter() {
    filterData.value.name = "";
    filterData.value.type = "";
    filterData.value.mark = "";
    filterData.value.code = "";
    filterData.value.purchasedStart = null;
    filterData.value.purchasedEnd = null;

    filter.name = "";
    filter.type = "";
    filter.mark = "";
    filter.code = "";
    filter.purchasedStart = null;
    filter.purchasedEnd = null;

    sort.value.length = 0;
    Object.values(sortItems.value).forEach((item) => {
        item.show = true;
        item.index = 0;
    });

    resetPage();
}

function resetPage() {
    page = -1;
    clear();
    // infinite scroll should fire event
}

useIntersectionObserver(
    scrollTarget,
    ([{ isIntersecting }]) => {
        // console.log(isIntersecting);
        if (isIntersecting) {
            page++;
            loadMoreInstruments();
        }
    },
    {
        rootMargin: "400px",
    }
);

function redirect(instrumentId) {
    router.push(`/instruments/${instrumentId}`);
}

function handleClick(event) {
    console.log("Tag name: " + event.target.tagName);
    if (event.target.tagName === "I" || event.target.tagName === "BUTTON") {
        event.stopPropagation();
    }
}

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
