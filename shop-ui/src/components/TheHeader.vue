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
            <transition name="fade">
                <v-app-bar-title
                    v-show="route.meta.title"
                    :key="route.meta.title"
                    class="ma-2 pa-2"
                >
                    {{ route.meta.title }}
                </v-app-bar-title>
            </transition>
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

<style scoped>
.fade-enter-active {
    transition: opacity 0.3s ease;
    transition-delay: 0.3s;
}

.fade-leave-active {
    transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}
</style>
