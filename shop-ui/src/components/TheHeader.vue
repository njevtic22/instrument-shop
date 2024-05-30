<template>
    <v-app-bar density="compact" color="primary">
        <template v-slot:prepend>
            <v-app-bar-title
                @click="redirectToInstruments"
                class="cursor-pointer ma-2 pa-2"
            >
                Instruments shop
            </v-app-bar-title>
            <v-app-bar-nav-icon
                @click="emit('menu-clicked')"
            ></v-app-bar-nav-icon>
        </template>

        <template v-slot:append>
            <v-app-bar-title class="ma-2 pa-2">
                {{ route.meta.title }}
            </v-app-bar-title>
        </template>
    </v-app-bar>
</template>

<script setup>
import { useRoute, useRouter } from "vue-router";

const route = useRoute();
const router = useRouter();
const emit = defineEmits(["menu-clicked"]);

function redirectToInstruments() {
    router.push("/");
}
</script>

<style scoped></style>
