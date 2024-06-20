<template>
    <h1>Receipt</h1>
    {{ route.params.id }}
    <br />
    {{ receipt }}
    <br />
    {{ items }}
</template>

<script setup>
import { inject, ref } from "vue";
import { fetchReceipt } from "@/store/receipt";
import { fetchReceiptItems } from "@/store/receiptItem";
import { useRoute } from "vue-router";

const route = useRoute();
const errorSnack = inject("defaultErrorSnackbar");

const receipt = ref(null);
const items = ref([]);

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
</script>

<style scoped></style>
