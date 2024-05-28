<template>
    <v-card class="padded mx-auto" width="30%">
        <v-form ref="form">
            <v-text-field
                v-model="username"
                :rules="[(value) => !!value || 'Username is required']"
                label="Username"
                required
            ></v-text-field>
            <v-text-field
                v-model="password"
                :rules="[(value) => !!value || 'Password is required']"
                label="Password"
                required
            ></v-text-field>
        </v-form>

        <v-card-actions class="justify-center">
            <v-btn variant="elevated" color="primary" @click="login">
                Login
            </v-btn>
        </v-card-actions>
    </v-card>
</template>

<script setup>
import { ref } from "vue";

const form = ref(null);
const username = ref("");
const password = ref("");

async function login() {
    const { valid } = await form.value.validate();

    if (!valid) {
        return;
    }

    console.log("Doing login");
    // form.value.reset();
    // form.value.resetValidation();
}
</script>

<style scoped>
.padded {
    padding: 3%;
}
</style>
