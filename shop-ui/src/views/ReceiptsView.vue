<template>
    <v-data-table
        v-model:items-per-page="size"
        :items="receipts"
        :headers="headers"
        :items-per-page-options="pageOptions"
        @update:options="loadReceipts"
        class="elevation-4"
    >
    </v-data-table>
</template>

<script setup>
import { receipts, fetchReceipts } from "@/store/receipt";
import { ref, inject } from "vue";

const errorSnack = inject("defaultErrorSnackbar");

fetchReceipts(errorSnack);

const headers = [
    {
        title: "Code",
        key: "code",
        align: "start",
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
const sortBy = ref("");

const pageOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 50, title: "50" },
    { value: 100, title: "100" },
    { value: -1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function loadReceipts(options) {
    page.value = options.page;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    console.log(JSON.stringify(options));
}
</script>

<style scoped></style>
