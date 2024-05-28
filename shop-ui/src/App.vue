<template>
    <v-app>
        <v-main>
            <TheHeader @menu-clicked="toggleDrawer"></TheHeader>
            <TheSidebar v-model="drawer"></TheSidebar>
            <div class="main-container">
                <router-view />
            </div>
        </v-main>
    </v-app>
</template>

<script setup>
import { ref } from "vue";

const drawer = ref(true);

function toggleDrawer() {
    drawer.value = !drawer.value;
}
</script>

<style scoped>
.main-container {
    padding: 2%;
}
</style>
