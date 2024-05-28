<template>
    <v-app>
        <v-main>
            <TheHeader @menu-clicked="toggleDrawer"></TheHeader>
            <TheSidebar v-model="drawer"></TheSidebar>
            <div class="main-container">
                <router-view v-slot="{ Component }">
                    <transition name="fade">
                        <component :is="Component" />
                    </transition>
                </router-view>
            </div>
        </v-main>
    </v-app>
</template>

<script setup>
import { ref } from "vue";
import axios from "axios";

const drawer = ref(true);

axios.interceptors.response.use(
    (response) => response,
    function (error) {
        console.log(error.response.data);
        return Promise.reject(error);
    }
);

function toggleDrawer() {
    drawer.value = !drawer.value;
}
</script>

<style scoped>
.main-container {
    padding: 2%;
}

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
