<template>
    <v-data-table-server
        v-model:items-per-page="size"
        :items="receipts"
        :items-length="totalElements"
        :items-per-page-options="sizeOptions"
        :headers="headers"
        @update:options="loadReceipts"
        class="elevation-4"
        hover
    >
        <template v-slot:item.issuedAt="{ value }">
            {{ formatDate(value) }}
        </template>
    </v-data-table-server>
</template>

<script setup>
import { receipts, fetchReceipts } from "@/store/receipt";
import { ref, inject } from "vue";

const errorSnack = inject("defaultErrorSnackbar");

// const tableHeight = ref(400);

// onMounted(() => {
//     resizeTableHeight();
//     window.addEventListener("resize", resizeTableHeight);
// });

// const resizeTableHeight = () => {
//     const viewportHeight = window.innerHeight;
//     tableHeight.value = viewportHeight - 166;
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
const sortBy = ref("");

const totalElements = ref(0);
const totalPages = ref(0);

const sizeOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 50, title: "50" },
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function loadReceipts(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    fetchReceipts(
        page.value,
        size.value,
        (response) => {
            totalElements.value = response.data.totalElements;
            totalPages.value = response.data.totalPages;
        },
        errorSnack
    );
}

function formatDate(dateArr) {
    return dateArr[2] + "." + dateArr[1] + "." + dateArr[0] + ".";
}
</script>

<style scoped>
/* 
v-data-table-server {
    height: 100%;
    max-height: 100%;
} */
</style>
