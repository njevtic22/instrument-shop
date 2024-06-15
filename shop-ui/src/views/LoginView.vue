<template>
    <v-card class="padded mx-auto" width="25%">
        <v-form ref="form">
            <v-text-field
                v-model="data.username"
                :rules="[required]"
                label="Username"
                required
                class="padded"
            ></v-text-field>

            <v-text-field
                v-model="data.password"
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
            :class="error.occured ? '' : 'error-hidden'"
            class="d-flex justify-center error-color"
        >
            {{ error.message }}
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
import { ref, computed } from "vue";
import { useRouter } from "vue-router";
import axios from "axios";
import { logIn } from "@/store/auth";

const router = useRouter();

const form = ref(null);

const data = ref({
    username: "",
    password: "",
});
const showPassword = ref(false);

const required = (value) => !!value || "Required";

const error = ref({
    message: "Bad credentials",
    occured: false,
});

async function login() {
    const { valid } = await form.value.validate();

    if (!valid) {
        return;
    }

    const loginData = { ...data.value };

    const successCallback = (response) => {
        localStorage.setItem("token", response.data.token);
        localStorage.setItem("role", response.data.role);

        axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.token;

        router.push("/");
    };

    const errorCallback = (err) => {
        error.value.message = err.response.data.message;
        error.value.occured = true;
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
