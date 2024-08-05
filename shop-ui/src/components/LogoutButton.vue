<template>
    <v-btn @click="logout" block color="primary"> Logout </v-btn>
</template>

<script setup>
import { useRouter } from "vue-router";
import axios from "axios";
import { clear as clearRole } from "@/store/auth";
import { clear as clearProfile } from "@/store/profile";
import { clear as clearReceipt } from "@/store/receipt";
import { clear as clearReceiptItem } from "@/store/receiptItem";
import { clear as clearUser } from "@/store/user";
import { clear as clearBoughtInstrument } from "@/store/boughtInstrument";
import { clear as clearType } from "@/store/instrumentType";
import { clear as clearAvailableInstrument } from "@/store/availableInstrument";
import { clear as clearCart } from "@/store/cart";

const router = useRouter();

function logout() {
    localStorage.removeItem("token");
    localStorage.removeItem("role");

    delete axios.defaults.headers.common["Authorization"];
    router.push("/login");

    // v-data-table update:options event is fired
    // when data is cleared and first page is not currently shown
    // if there is no data, then the first page is shown which could fire said event
    // That is why setTimeout is written, to make sure table component is destroyed and then clear data
    clearRole();
    clearProfile();
    setTimeout(() => {
        clearReceipt();
        clearReceiptItem();
        clearUser();
        clearBoughtInstrument();
        clearAvailableInstrument();
        clearType();
        clearCart();
    }, 0.1 * 1000);
}
</script>

<style scoped></style>
