<template>
    <v-card class="pa-6 mx-auto" width="60%">
        <v-card-text>
            <UserAddForm v-model="user" ref="userForm"></UserAddForm>
        </v-card-text>

        <v-card-actions class="justify-center">
            <v-btn
                :disabled="!userForm || !userForm.isFormValid"
                @click="registerCustomer"
                variant="elevated"
                color="primary"
            >
                Register
            </v-btn>
        </v-card-actions>
    </v-card>
</template>

<script setup>
import { inject, ref } from "vue";
import { useRouter } from "vue-router";
import { register } from "@/store/auth";

const router = useRouter();
const errorSnack = inject("defaultErrorSnackbar");

const userForm = ref(null);

const user = ref({
    name: "",
    surname: "",
    email: "",
    username: "",
    password: "",
    repeatedPassword: "",
});

function registerCustomer() {
    const valid = userForm.value.validate();
    if (!valid) {
        return;
    }

    const registerData = { ...user.value };
    const successCallback = () => {
        router.push("/");
    };

    register(registerData, successCallback, errorSnack);
}
</script>

<style scoped></style>
