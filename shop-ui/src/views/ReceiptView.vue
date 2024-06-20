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
    <v-data-table
        :items="items"
        :headers="headers"
        @click:row="redirect"
        class="elevation-4"
        hide-default-footer
        multi-sort
        hover
    >
        <template v-slot:item.totalProductPrice="{ item }">
            {{ (item.productQuantity * item.productPrice).toFixed(2) }}
        </template>
    </v-data-table>
</template>

<script setup>
import { inject, ref } from "vue";
import { useRoute, useRouter } from "vue-router";
import { fetchReceipt } from "@/store/receipt";
import { fetchReceiptItems } from "@/store/receiptItem";
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
const items = ref([]);

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

function loadReceipt() {
    const successCallback = (response) => {
        receipt.value = response.data;
    };
    fetchReceipt(route.params.id, successCallback, errorSnack);
}
loadReceipt();

function loadItems() {
    const successCallback = (response) => {
        items.value = response.data;
    };
    fetchReceiptItems(route.params.id, successCallback, errorSnack);
}
loadItems();

function redirect(event, clickedRow) {
    router.push("/instruments/" + clickedRow.item.productId);
}
</script>

<style scoped></style>
