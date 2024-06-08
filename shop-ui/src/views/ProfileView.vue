<template>
    <v-card class="mx-auto" width="90%">
        <ProfileData
            :expanded="showChange"
            @toggle-expansion="showChange = !showChange"
        ></ProfileData>

        <v-expand-transition>
            <div v-if="showChange">
                <ProfileChange></ProfileChange>
            </div>
        </v-expand-transition>
    </v-card>
</template>

<script setup>
import { inject, ref } from "vue";
import { fetchProfile } from "@/store/profile";

const errorSnack = inject("defaultErrorSnackbar");
fetchProfile(errorSnack);

const showChange = ref(false);
</script>

<style scoped>
.profile-image {
    width: 50%;
}
</style>
