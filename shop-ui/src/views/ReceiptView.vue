<template>
    <v-table class="elevation-4">
        <thead>
            <tr>
                <th>Code</th>
                <th class="text-right">Total price</th>
                <th class="text-right">Paid</th>
                <th class="text-right">Change</th>
                <th class="text-right">Issued at</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{{ receipt.code }}</td>
                <td class="text-right">{{ receipt.totalPrice }}</td>
                <td class="text-right">{{ receipt.paid }}</td>
                <td class="text-right">{{ receipt.change }}</td>
                <td class="text-right">
                    {{ formatDateTime(receipt.issuedAt) }}
                </td>
            </tr>
        </tbody>
    </v-table>

    <br />
    <h2>Details</h2>
    <v-data-table-server
        v-model:items-per-page="size"
        :items="items.data"
        :items-length="items.totalElements"
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
        <template v-slot:item.totalProductPrice="{ item }">
            {{ (item.productQuantity * item.productPrice).toFixed(2) }}
        </template>

        <template v-slot:footer.prepend>
            <v-expansion-panels static elevation="0" variant="accordion">
                <v-expansion-panel title="Filter receipt items">
                    <v-expansion-panel-text>
                        <ReceiptItemsFilter
                            @filter="filter"
                        ></ReceiptItemsFilter>
                    </v-expansion-panel-text>
                </v-expansion-panel>
            </v-expansion-panels>
        </template>
    </v-data-table-server>
</template>

<script setup>
import { inject, ref } from "vue";
import { useRoute, useRouter } from "vue-router";
import { fetchReceipt } from "@/store/receipt";
import { items, fetchReceiptItems } from "@/store/receiptItem";
import { formatDateTime } from "@/util/date";

const route = useRoute();
const router = useRouter();
const errorSnack = inject("defaultErrorSnackbar");

const receipt = ref({
    code: "",
    totalPrice: 0,
    paid: 0,
    change: 0,
    issuedAt: [0, 0, 0, 0, 0, 0, 0],
});

const headers = [
    // {
    //     title: "ID",
    //     key: "id",
    // },
    // {
    //     title: "Product id",
    //     key: "productId",
    // },
    {
        title: "Product name",
        key: "productName",
    },
    {
        title: "Product price",
        key: "productPrice",
        align: "end",
    },
    {
        title: "Product quantity",
        key: "productQuantity",
        align: "end",
    },
    {
        title: "Total product price",
        key: "totalProductPrice",
        align: "end",
        sortable: false,
    },
];

const page = ref(0);
const size = ref(5);
const sortBy = ref([]);
let filterData = {};

const sizeOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function filter(newFilter) {
    filterData = newFilter;
    loadItems();
}

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    loadItems();
}

function loadReceipt() {
    const successCallback = (response) => {
        receipt.value = response.data;
    };
    fetchReceipt(route.params.id, successCallback, errorSnack);
}
loadReceipt();

function loadItems() {
    fetchReceiptItems(
        route.params.id,
        page.value,
        size.value,
        sortBy.value,
        filterData,
        errorSnack
    );
}

function redirect(event, clickedRow) {
    router.push("/instruments/" + clickedRow.item.productId);
}
</script>

<style scoped></style>
