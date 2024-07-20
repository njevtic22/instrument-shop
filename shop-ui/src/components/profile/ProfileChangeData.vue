<template>
    <v-form ref="form">
        <v-row class="d-flex justify-center">
            <v-col cols="4">
                <v-text-field
                    v-model="profile.name"
                    :rules="[rules.required]"
                    label="Name"
                ></v-text-field>
            </v-col>
            <v-col cols="4">
                <v-text-field
                    v-model="profile.surname"
                    :rules="[rules.required]"
                    label="Surname"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row class="d-flex justify-center">
            <v-col cols="4">
                <v-text-field
                    v-model="profile.email"
                    :rules="[rules.required, rules.email]"
                    label="Email"
                ></v-text-field>
            </v-col>
            <v-col cols="4">
                <v-text-field
                    v-model="profile.username"
                    :rules="[rules.required]"
                    label="Username"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row class="d-flex justify-center">
            <v-btn :disabled="!isFormValid" @click="update" color="primary">
                Save
            </v-btn>
        </v-row>
        <br />
    </v-form>
</template>

<script setup>
import { ref, inject, computed } from "vue";
import axios from "axios";
import { profileState, updateProfile } from "@/store/profile";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const profile = ref({
    name: profileState.value.name,
    surname: profileState.value.surname,
    email: profileState.value.email,
    username: profileState.value.username,
});

const form = ref(null);

const rules = {
    required: (value) => Boolean(value) || "Required",
    email: (email) =>
        /.+@.+\..+/.test(email) || "Email must be valid email adress",
};

// :disabled="!form ? !false : !form.isValid"
const isFormValid = computed(() => {
    return form.value ? form.value.isValid : false;
});

function update() {
    const changes = { ...profile.value };

    const successCallback = (response) => {
        if (response.data.token) {
            localStorage.setItem("token", response.data.token);
            axios.defaults.headers.common["Authorization"] =
                "Bearer " + response.data.token;
        }

        snackbar("Profile updated", 3 * 1000);
    };

    updateProfile(changes, successCallback, errorSnack);
}
</script>

<style scoped></style>
