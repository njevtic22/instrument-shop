<template>
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
        <v-btn
            @click="clearFilter"
            color="primary"
            variant="outlined"
            class="ml-2"
        >
            Reset
        </v-btn>
    </v-form>
</template>

<script setup>
import { ref, computed, defineEmits } from "vue";
import { toEpochMilli } from "@/util/date";

const emit = defineEmits(["filter", "clear"]);

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

function applyFilter() {
    let filter = { ...filterData.value };
    filter.purchasedStart = filter.purchasedStart
        ? toEpochMilli(filter.purchasedStart)
        : null;

    filter.purchasedEnd = filter.purchasedEnd
        ? toEpochMilli(filter.purchasedEnd)
        : null;

    let sortFilter = {
        filter: filter,
        sort: [...sort.value],
    };

    emit("filter", sortFilter);
}

function clearFilter() {
    filterData.value.name = "";
    filterData.value.type = "";
    filterData.value.mark = "";
    filterData.value.code = "";
    filterData.value.purchasedStart = null;
    filterData.value.purchasedEnd = null;

    sort.value.length = 0;
    Object.values(sortItems.value).forEach((item) => {
        item.show = true;
        item.index = 0;
    });

    emit("clear");
}
</script>

<style scoped></style>
