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
            <v-btn :disabled="!isFormValid" @click="emitUpdate" color="primary">
                Save
            </v-btn>
        </v-row>
        <br />
    </v-form>
</template>

<script setup>
import { ref, defineEmits, computed } from "vue";
import { profileState } from "@/store/profile";

const emit = defineEmits(["change-profile"]);

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

const isFormValid = computed(() => {
    if (!form.value) {
        return false;
    }

    return form.value.isValid;
});

function emitUpdate() {
    const changes = {
        name: profile.value.name,
        surname: profile.value.surname,
        email: profile.value.email,
        username: profile.value.username,
    };
    emit("change-profile", changes);
}
</script>

<style scoped></style>
