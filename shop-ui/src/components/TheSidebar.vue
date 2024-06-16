<template>
    <v-navigation-drawer v-model="isOpened" permanent elevation="4">
        <v-list density="compact" nav>
            <TransitionGroup name="fade">
                <v-list-item
                    v-for="item in activeItems"
                    :key="item.name"
                    :title="item.name"
                    :value="item.name"
                    :prepend-icon="item.icon"
                    @click="item.redirect"
                >
                </v-list-item>
            </TransitionGroup>
        </v-list>

        <template v-slot:append>
            <transition name="fade">
                <LogoutButton
                    v-if="currentRole !== Role.ANONYMOUS"
                ></LogoutButton>
            </transition>
        </template>
    </v-navigation-drawer>
</template>

<script setup>
import { defineModel, ref, computed } from "vue";
import { useRouter } from "vue-router";
import { Role, currentRole } from "@/store/auth";

const router = useRouter();
const isOpened = defineModel();

const items = ref([
    {
        name: "Login",
        icon: "mdi-login",
        redirect() {
            router.push("/login");
        },
        getActive() {
            return currentRole.value === Role.ANONYMOUS;
        },
    },
    {
        name: "Profile",
        icon: "mdi-account",
        redirect() {
            router.push("/profile");
        },
        getActive() {
            return currentRole.value !== Role.ANONYMOUS;
        },
    },
    {
        name: "Instruments",
        icon: "mdi-guitar-acoustic",
        redirect() {
            router.push("/");
        },
        getActive() {
            return true;
        },
    },
    {
        name: "Receipts",
        icon: "mdi-receipt",
        redirect() {
            router.push("/receipts");
        },
        getActive() {
            return currentRole.value === Role.MANAGER;
        },
    },
]);

const activeItems = computed(() => {
    return items.value.filter((item) => item.getActive());
});

// to avoid constantly calling isAnonymous when directly
// binding to v-if
// it also causes error on save:
// Maximum recursive updates exceeded in component <VMain>. This means you have a reactive effect that ...
// const isAnonymousComputed = computed(() => isAnonymous());
</script>

<style scoped>
.fade-enter-active {
    transition: opacity 0.3s ease;
    transition-delay: 0.3s;
}

.fade-leave-active {
    transition: opacity 0.3s ease;
    width: 94%;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

.fade-leave-active {
    position: absolute;
}
</style>
