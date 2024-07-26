<template>
    <TheSnackbar ref="theSnack"></TheSnackbar>
    <v-app>
        <v-main>
            <TheHeader @menu-clicked="drawer = !drawer"></TheHeader>
            <TheSidebar v-model="drawer"></TheSidebar>
            <div class="main-container">
                <router-view v-slot="{ Component, route }">
                    <transition name="fade">
                        <div :key="route.path">
                            <component :is="Component" />
                        </div>
                    </transition>
                </router-view>
            </div>
        </v-main>
    </v-app>
</template>

<script setup>
import axios from "axios";
import { ref, provide, onMounted } from "vue";

const drawer = ref(true);
const theSnack = ref(null);

function defaultErrorSnackbar(error) {
    let errorMessage = error.response.data.message;
    if (error.response.data.message === "Invalid field(s)") {
        errorMessage = "";
        for (let i = 0; i < error.response.data.details.length; i++) {
            const detail = error.response.data.details[i];

            for (let j = 0; j < detail.messages.length; j++) {
                const message = detail.messages[j];

                let suffix = ". ";
                if (message.endsWith(".")) {
                    suffix = " ";
                }

                errorMessage += message + suffix;
            }
        }
    }
    theSnack.value.show(errorMessage, -1, "red-darken-1", "");
}

axios.defaults.headers.common["Authorization"] =
    "Bearer " + localStorage.getItem("token");

onMounted(() => {
    provide("snackbar", theSnack.value.show);
    provide("defaultErrorSnackbar", defaultErrorSnackbar);
});
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
