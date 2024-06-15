<template>
    <v-btn @click="logout" block color="primary"> Logout </v-btn>
</template>

<script setup>
import { useRouter } from "vue-router";
import axios from "axios";
import { clear as clearRole } from "@/store/auth";
import { clear as clearProfile } from "@/store/profile";

const router = useRouter();

function logout() {
    localStorage.removeItem("token");
    localStorage.removeItem("role");

    clearRole();
    clearProfile();

    delete axios.defaults.headers.common["Authorization"];
    router.push("/");
}
</script>

<style scoped></style>
