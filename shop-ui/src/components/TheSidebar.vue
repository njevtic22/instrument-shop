<template>
    <v-navigation-drawer v-model="isOpened" permanent>
        <v-list density="compact" nav>
            <v-list-item
                v-if="currentRole === Role.ANONYMOUS"
                @click="router.push('/login')"
                prepend-icon="mdi-login"
                title="Login"
                value="Login"
            >
            </v-list-item>
            <v-list-item
                @click="router.push('/')"
                prepend-icon="mdi-guitar-acoustic"
                title="Instruments"
                value="Instruments"
            >
            </v-list-item>
        </v-list>

        <template v-slot:append>
            <v-btn
                v-if="currentRole !== Role.ANONYMOUS"
                @click="clearStorage"
                block
                color="primary"
            >
                Logout
            </v-btn>
        </template>
    </v-navigation-drawer>
</template>

<script setup>
import { defineModel } from "vue";
import { useRouter } from "vue-router";
import { Role, currentRole, logout } from "@/store/auth";

const router = useRouter();
const isOpened = defineModel();

function clearStorage() {
    localStorage.removeItem("token");
    localStorage.removeItem("role");

    logout();

    router.push("/");
}

// to avoid constantly calling isAnonymous when directly
// binding to v-if
// it also causes error on save:
// Maximum recursive updates exceeded in component <VMain>. This means you have a reactive effect that ...
// const isAnonymousComputed = computed(() => isAnonymous());
</script>

<style scoped></style>
