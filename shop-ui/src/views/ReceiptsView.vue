<template>
    <v-data-table-server
        v-model:expanded="expanded"
        v-model:items-per-page="size"
        :items="receipts.data"
        :items-length="receipts.totalElements"
        :items-per-page-options="sizeOptions"
        :headers="headers"
        :sort-by="sortBy"
        @update:options="updateOptions"
        @click:row="openModal"
        item-value="id"
        class="elevation-4"
        show-expand
        multi-sort
        hover
    >
        <template v-slot:item.issuedAt="{ value }">
            {{ formatDateTime(value) }}
        </template>

        <template v-slot:expanded-row="{ columns, item }">
            <tr>
                <td :colspan="columns.length">
                    <v-table>
                        <thead>
                            <tr>
                                <th class="text-left">Product name</th>
                                <th class="text-left">Product price</th>
                                <th class="text-left">Product quantity</th>
                                <th class="text-left">Total price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr
                                v-for="receiptItem in item.items"
                                :key="receiptItem.id"
                            >
                                <td>{{ receiptItem.productName }}</td>
                                <td>{{ receiptItem.productPrice }}</td>
                                <td>{{ receiptItem.productQuantity }}</td>
                                <td>
                                    {{
                                        receiptItem.productPrice *
                                        receiptItem.productQuantity
                                    }}
                                </td>
                            </tr>
                        </tbody>
                    </v-table>
                </td>
            </tr>
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
import { receipts, fetchReceipts } from "@/store/receipt";
import { fetchReceiptItems } from "@/store/receiptItem";

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

const expanded = ref([]);

const page = ref(0);
const size = ref(5);
const sortBy = ref([]);
let filterData = {};

const sizeOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 50, title: "50" },
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function filter(newFilter) {
    newFilter.issuedAtStart = newFilter.issuedAtStart
        ? toEpochMili(newFilter.issuedAtStart)
        : null;
    newFilter.issuedAtEnd = newFilter.issuedAtEnd
        ? toEpochMili(newFilter.issuedAtEnd)
        : null;

    filterData = newFilter;
    loadReceipts();
}

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    expanded.value.splice(0, expanded.value.length);

    loadReceipts();
}

function loadReceipts() {
    fetchReceipts(page.value, size.value, sortBy.value, filterData, errorSnack);
}

function openModal(event, clickedRow) {
    const indexExpanded = expanded.value.findIndex(
        (i) => i === clickedRow.item.id
    );
    if (indexExpanded === -1) {
        expanded.value.push(clickedRow.item.id);
    } else {
        expanded.value.splice(indexExpanded, 1);
    }

    fetchItems(receipts.value.data[clickedRow.index]);

    // attributes that are objects are still proxies
    // const value = { ...clickedRow.item };
    // console.log(value);
}

function fetchItems(receipt) {
    const successCallback = (response) => {
        receipt.items = response.data;
    };
    fetchReceiptItems(receipt.id, successCallback, errorSnack);
}

function formatDateTime(dateArr) {
    return (
        dateArr[2] +
        "." +
        dateArr[1] +
        "." +
        dateArr[0] +
        ". " +
        dateArr[3] +
        ":" +
        dateArr[4] +
        ":" +
        dateArr[5]
    );
}

function toEpochMili(date) {
    return date.getTime();
}
</script>

<style scoped>
/* v-data-table-server {
    height: 100%;
    max-height: 100%;
} */
</style>
