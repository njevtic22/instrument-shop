<template>
    <v-navigation-drawer v-model="isOpened" temporary>
        <v-list density="compact" nav>
            <v-list-item
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
            <v-btn block color="primary"> Logout </v-btn>
        </template>
    </v-navigation-drawer>
</template>

<script setup>
import { defineModel } from "vue";
import { useRouter } from "vue-router";

const router = useRouter();
const isOpened = defineModel();
</script>

<style scoped></style>
