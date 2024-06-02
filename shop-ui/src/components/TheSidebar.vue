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
                v-if="currentRole !== Role.ANONYMOUS"
                @click="router.push('/profile')"
                prepend-icon="mdi-account"
                title="Profile"
                value="Profile"
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
                @click="logout"
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
import { Role, currentRole, clear as clearRole } from "@/store/auth";
import { clear as clearProfile } from "@/store/profile";
import axios from "axios";

const router = useRouter();
const isOpened = defineModel();

function logout() {
    localStorage.removeItem("token");
    localStorage.removeItem("role");

    clearRole();
    clearProfile();

    delete axios.defaults.headers.common["Authorization"];
    router.push("/");
}

// to avoid constantly calling isAnonymous when directly
// binding to v-if
// it also causes error on save:
// Maximum recursive updates exceeded in component <VMain>. This means you have a reactive effect that ...
// const isAnonymousComputed = computed(() => isAnonymous());
</script>

<style scoped></style>
