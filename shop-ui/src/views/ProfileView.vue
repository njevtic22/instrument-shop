<template>
    <div>
        <h1>Profile page</h1>
        {{ profile }}
    </div>
</template>

<script setup>
import { inject } from "vue";
import { profileState, fetchProfile } from "@/store/profile";

const errorSnack = inject("defaultErrorSnackbar");
const profile = profileState;
fetchProfile(errorSnack);
</script>

<style scoped></style>
