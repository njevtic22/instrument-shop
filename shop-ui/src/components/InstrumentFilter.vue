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

        <v-row v-if="mode === Modes.BOUGHT">
            <v-col>
                <CustomDateInput
                    v-model="filterData.purchasedStart"
                    label="Purchased from"
                    bgColor="white"
                    hideDetails
                >
                </CustomDateInput>
            </v-col>

            <v-col>
                <CustomDateInput
                    v-model="filterData.purchasedEnd"
                    label="Purchased to"
                    bgColor="white"
                    hideDetails
                >
                </CustomDateInput>
            </v-col>
        </v-row>

        <v-row v-if="mode === Modes.AVAILABLE">
            <v-col>
                <v-text-field
                    v-model="filterData.priceStart"
                    @keydown="validateDigit"
                    label="Minimum price"
                    bg-color="white"
                    type="number"
                    hideDetails
                ></v-text-field>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="filterData.priceEnd"
                    @keydown="validateDigit"
                    label="Maxim price"
                    bg-color="white"
                    type="number"
                    hideDetails
                ></v-text-field>
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
import { ref, computed } from "vue";
import { toEpochMilli } from "@/util/date";

const emit = defineEmits(["filter", "clear"]);

const filterData = ref({
    name: "",
    type: "",
    mark: "",
    code: "",
    priceStart: null,
    priceEnd: null,
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
});

const Modes = Object.freeze({
    AVAILABLE: "AVAILABLE",
    BOUGHT: "BOUGHT",
});

const mode = ref("");

// v-model for mode works well for template but not in javascript code
// because setMode was intended to be in onMounted which executes before
// mode was set (initialy mode is empty string)
// Solution is either with exposed setMode function or using wathces
function setMode(chosenMode) {
    let asc = {
        show: true,
        index: 0,
        title: "",
        value: {
            key: "",
            order: "asc",
            pairedKey: 10,
        },
    };

    let desc = {
        show: true,
        index: 0,
        title: "",
        value: {
            key: "",
            order: "desc",
            pairedKey: 9,
        },
    };

    if (chosenMode === Modes.AVAILABLE) {
        asc.title = "Price,asc";
        asc.value.key = "price";

        desc.title = "Price,desc";
        desc.value.key = "price";
    } else if (chosenMode === Modes.BOUGHT) {
        asc.title = "Purchased,asc";
        asc.value.key = "purchased";

        desc.title = "Purchased,desc";
        desc.value.key = "purchased";
    }

    sortItems.value[9] = asc;
    sortItems.value[10] = desc;

    mode.value = chosenMode;
}

defineExpose({
    Modes,
    setMode,
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

    if (filter.purchasedStart) {
        filter.purchasedStart.setHours(0, 0, 1);
        filter.purchasedStart = toEpochMilli(filter.purchasedStart);
    }

    if (filter.purchasedEnd) {
        filter.purchasedEnd.setHours(23, 59, 59);
        filter.purchasedEnd = toEpochMilli(filter.purchasedEnd);
    }

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
    filterData.value.priceStart = null;
    filterData.value.priceEnd = null;
    filterData.value.purchasedStart = null;
    filterData.value.purchasedEnd = null;

    sort.value.length = 0;
    Object.values(sortItems.value).forEach((item) => {
        item.show = true;
        item.index = 0;
    });

    emit("clear");
}

function validateDigit(event) {
    if (event.key === "Backspace") {
        return;
    }

    if (event.key === " " || isNaN(Number(event.key))) {
        event.preventDefault();
    }
}
</script>

<style scoped></style>
