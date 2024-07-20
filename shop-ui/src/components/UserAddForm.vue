<template>
    <v-form ref="form">
        <v-row>
            <v-col>
                <v-text-field
                    v-model="user.name"
                    :rules="[rules.required]"
                    label="Name"
                ></v-text-field>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="user.surname"
                    :rules="[rules.required]"
                    label="Surname"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row>
            <v-col>
                <v-text-field
                    v-model="user.email"
                    :rules="[rules.required, rules.email]"
                    label="Email"
                ></v-text-field>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="user.username"
                    :rules="[rules.required]"
                    label="Username"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row>
            <v-col>
                <v-text-field
                    v-model="user.password"
                    :rules="[rules.required]"
                    :type="show.password ? 'text' : 'password'"
                    :append-inner-icon="
                        show.password ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.password = !show.password"
                    :append-icon="
                        show.passwordRules
                            ? 'mdi-chevron-up'
                            : 'mdi-chevron-down'
                    "
                    @click:append="show.passwordRules = !show.passwordRules"
                    :maxlength="50"
                    :error="!isPasswordValid && Boolean(user.password)"
                    label="Password"
                    required
                    counter
                >
                    <template v-slot:loader>
                        <v-progress-linear
                            :model-value="progress.value"
                            :color="progress.color"
                            height="7"
                        ></v-progress-linear>
                    </template>
                </v-text-field>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="user.repeatedPassword"
                    :rules="[rules.required, rules.matchWithNewPassword]"
                    :type="show.password ? 'text' : 'password'"
                    :append-inner-icon="
                        show.password ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.password = !show.password"
                    label="Repeated password"
                    required
                    ref="repeatedPasswordRef"
                ></v-text-field>
            </v-col>
        </v-row>

        <v-row>
            <v-col>
                <v-expand-transition>
                    <div v-show="show.passwordRules">
                        <PasswordStrength
                            v-model="user.password"
                            @progress-changed="updateProgressBar"
                            @password-valid-changed="updateValid"
                        ></PasswordStrength>
                    </div>
                </v-expand-transition>
            </v-col>
        </v-row>
    </v-form>
</template>

<script setup>
import { ref, computed, watch, defineModel } from "vue";

const form = ref(null);
const repeatedPasswordRef = ref(null);

const progress = ref({
    value: 0,
    color: "red-darken-1",
});

const user = defineModel();

const isPasswordValid = ref(false);

const show = ref({
    password: false,
    passwordRules: false,
});

const rules = {
    required: (value) => Boolean(value) || "Required",
    email: (email) =>
        /.+@.+\..+/.test(email) || "Email must be valid email adress",
    matchWithNewPassword: (value) =>
        value === user.value.password ||
        "Repeated password does not match with password",
};

watch(
    () => user.value.password,
    () => {
        if (user.value.password) {
            repeatedPasswordRef.value.validate();
        }
    }
);

async function validate() {
    const { valid } = await form.value.validate();
    return valid;
}

function reset() {
    user.value.name = "";
    user.value.surname = "";
    user.value.email = "";
    user.value.username = "";
    user.value.role = "";
    user.value.password = "";
    user.value.repeatedPassword = "";

    form.value.resetValidation();
}

function updateValid(newValid) {
    isPasswordValid.value = newValid;
}

function updateProgressBar(newProgres) {
    progress.value.value = newProgres;
    progress.value.color = getProgressColor(newProgres);
}

function getProgressColor(progress) {
    if (progress <= 25) {
        return "red-darken-1";
    }

    if (progress <= 50) {
        return "orange-darken-1";
    }

    if (progress <= 75) {
        return "yellow-darken-1";
    }

    if (progress < 100) {
        return "light-blue-darken-1";
    }

    return "green-darken-1";
}

const isFormValid = computed(() => {
    return form.value ? form.value.isValid : false;
});

defineExpose({
    isFormValid,
    validate,
    reset,
});
</script>

<style setup></style>
