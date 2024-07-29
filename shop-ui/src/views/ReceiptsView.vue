<template>
    <h3>Profit: {{ profit.toFixed(2) }}</h3>
    <v-data-table-server
        v-model:items-per-page="size"
        :items="receipts.data"
        :items-length="receipts.totalElements"
        :items-per-page-options="sizeOptions"
        :headers="headers"
        :sort-by="sortBy"
        @update:options="updateOptions"
        @click:row="redirect"
        item-value="id"
        class="elevation-4"
        multi-sort
        hover
    >
        <template v-slot:item.issuedAt="{ value }">
            {{ formatDateTime(value) }}
        </template>

        <template v-slot:footer.prepend>
            <v-expansion-panels static elevation="0" variant="accordion">
                <v-expansion-panel title="Filter Receipts">
                    <v-expansion-panel-text>
                        <ReceiptsFilter @filter="filter"></ReceiptsFilter>
                    </v-expansion-panel-text>
                </v-expansion-panel>
            </v-expansion-panels>
        </template>
    </v-data-table-server>
</template>

<script setup>
import { ref, inject } from "vue";
import { useRouter } from "vue-router";
import { receipts, fetchReceipts, fetchProfit } from "@/store/receipt";
import { formatDateTime } from "@/util/date";

const router = useRouter();

const errorSnack = inject("defaultErrorSnackbar");

// const tableHeight = ref(400);

// onMounted(() => {
//     resizeTableHeight();
//     window.addEventListener("resize", resizeTableHeight);
// });

// const resizeTableHeight = () => {
//     const viewportHeight = window.innerHeight;
//     tableHeight.value = viewportHeight - 348;
// };

// onUnmounted(() => {
//     window.removeEventListener("resize", resizeTableHeight);
// });

const headers = [
    // {
    //     title: "ID",
    //     key: "id",
    // },
    {
        title: "Code",
        key: "code",
    },
    {
        title: "Total price",
        key: "totalPrice",
        align: "end",
    },
    {
        title: "Paid",
        key: "paid",
        align: "end",
    },
    {
        title: "Change",
        key: "change",
        align: "end",
    },
    {
        title: "Issued at",
        key: "issuedAt",
        align: "end",
    },
];

const page = ref(0);
const size = ref(5);
const sortBy = ref([]);
let filterData = {};

const profit = ref(0);

const sizeOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 50, title: "50" },
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function filter(newFilter) {
    filterData = newFilter;
    loadProfit();
    loadReceipts();
}

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    loadProfit();
    loadReceipts();
}

function loadReceipts() {
    fetchReceipts(page.value, size.value, sortBy.value, filterData, errorSnack);
}

function loadProfit() {
    const successCallback = (response) => {
        profit.value = response.data;
    };
    fetchProfit(filterData, successCallback, errorSnack);
}

function redirect(event, clickedRow) {
    router.push("/receipts/" + clickedRow.item.id);
}

// @click:row="expandRow"
// function expandRow(event, clickedRow) {
//     const indexExpanded = expanded.value.findIndex(
//         (i) => i === clickedRow.item.id
//     );
//     if (indexExpanded === -1) {
//         expanded.value.push(clickedRow.item.id);
//     } else {
//         expanded.value.splice(indexExpanded, 1);
//     }

//     fetchItems(receipts.value.data[clickedRow.index]);

//     // attributes that are objects are still proxies
//     // const value = { ...clickedRow.item };
//     // console.log(value);
// }
</script>

<style scoped>
/* v-data-table-server {
    height: 100%;
    max-height: 100%;
} */
</style>
