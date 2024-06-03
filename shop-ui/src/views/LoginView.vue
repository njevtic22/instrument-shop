<template>
    <v-card class="padded mx-auto" width="25%">
        <v-form ref="form">
            <v-text-field
                v-model="username"
                :rules="[required]"
                label="Username"
                required
                class="padded"
            ></v-text-field>

            <v-text-field
                v-model="password"
                :append-inner-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
                @click:append-inner="showPassword = !showPassword"
                :type="showPassword ? 'text' : 'password'"
                :rules="[required]"
                label="Password"
                required
                class="padded"
            ></v-text-field>
        </v-form>

        <v-card-item
            :class="errorOccured ? '' : 'error-hidden'"
            class="d-flex justify-center error-color"
        >
            {{ errorMessage }}
        </v-card-item>

        <v-card-actions class="justify-center">
            <v-btn
                :disabled="!isFormValid"
                variant="elevated"
                color="primary"
                @click="login"
            >
                Login
            </v-btn>
        </v-card-actions>
    </v-card>
</template>

<script setup>
import { ref, inject, computed } from "vue";
import { useRouter } from "vue-router";
import { logIn } from "@/store/auth";
import axios from "axios";

const router = useRouter();

const snackbar = inject("snackbar");

const form = ref(null);
const username = ref("");
const password = ref("");
const showPassword = ref(false);

const required = (value) => !!value || "Required";

const errorMessage = ref("Bad credentials");
const errorOccured = ref(false);

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

        axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.token;

        router.push("/");

        snackbar("Successful login", 3 * 1000);
    };

    const errorCallback = (error) => {
        errorMessage.value = error.response.data.message;
        errorOccured.value = true;
    };

    logIn(loginData, successCallback, errorCallback);
}

// :disabled="!form ? !false : !form.isValid"
const isFormValid = computed(() => {
    return form.value ? form.value.isValid : false;
});
</script>

<style scoped>
.padded {
    padding: 3%;
}

.error-hidden {
    visibility: hidden;
}

.error-color {
    color: #b71c1c;
}
</style>
