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
import { ref, inject } from "vue";
import { useRouter } from "vue-router";
import { logIn } from "@/store/auth";

const router = useRouter();

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const form = ref(null);
const username = ref("");
const password = ref("");

async function login() {
    const { valid } = await form.value.validate();

    if (!valid) {
        return;
    }

    const loginData = {
        username: username.value,
        password: password.value,
    };

    const successCallback = (response) => {
        localStorage.setItem("token", response.data.token);
        localStorage.setItem("role", response.data.role);

        router.push("/");

        snackbar("Successful login", 3 * 1000);
    };
    // form.value.reset();
    // form.value.resetValidation();

    // const errorCallback = (error) => {
    //     snackbar(error.response.data.message);
    //     // TODO: Add error message in login form
    // };

    logIn(loginData, successCallback, errorSnack);
}
</script>

<style scoped>
.padded {
    padding: 3%;
}
</style>
