<template>
    {{ users }}
</template>

<script setup>
import { inject } from "vue";
import { users, fetchUsers } from "@/store/user";

const errorSnack = inject("defaultErrorSnackbar");

fetchUsers(errorSnack);
</script>

<style scoped></style>
