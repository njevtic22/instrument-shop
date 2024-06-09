<template>
    <v-form ref="form">
        <v-row class="d-flex justify-center">
            <v-col cols="6">
                <v-text-field
                    v-model="passwordData.oldPassword"
                    :append-inner-icon="
                        show.oldPassword ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.oldPassword = !show.oldPassword"
                    :type="show.oldPassword ? 'text' : 'password'"
                    :rules="[formRules.required]"
                    label="Old password"
                    required
                ></v-text-field>
            </v-col>
        </v-row>

        <v-row class="d-flex justify-center">
            <v-col cols="6">
                <v-text-field
                    v-model="passwordData.newPassword"
                    :append-inner-icon="
                        show.newPassword ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.newPassword = !show.newPassword"
                    :append-icon="
                        show.passwordRules
                            ? 'mdi-chevron-up'
                            : 'mdi-chevron-down'
                    "
                    @click:append="show.passwordRules = !show.passwordRules"
                    :type="show.newPassword ? 'text' : 'password'"
                    :rules="[formRules.required]"
                    :maxlength="50"
                    :error="
                        !isNewPasswordValid && Boolean(passwordData.newPassword)
                    "
                    label="New password"
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

                <v-expand-transition>
                    <div v-show="show.passwordRules" class="padded">
                        <PasswordStrength
                            v-model="passwordData.newPassword"
                            @progress-changed="updateProgressBar"
                            @password-valid-changed="updateValid"
                        ></PasswordStrength>
                    </div>
                </v-expand-transition>
            </v-col>
        </v-row>

        <v-row class="d-flex justify-center">
            <v-col cols="6">
                <v-text-field
                    v-model="passwordData.repeatedPassword"
                    :append-inner-icon="
                        show.newPassword ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.newPassword = !show.newPassword"
                    :type="show.newPassword ? 'text' : 'password'"
                    :rules="[
                        formRules.required,
                        formRules.matchWithNewPassword,
                    ]"
                    label="Repeated password"
                    required
                    ref="repeatedPasswordRef"
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
import { ref, computed, watch } from "vue";

const passwordData = ref({
    oldPassword: "",
    newPassword: "",
    repeatedPassword: "",
});

const isNewPasswordValid = ref(false);

const show = ref({
    oldPassword: false,
    newPassword: false,
    passwordRules: false,
});

const form = ref(null);
const repeatedPasswordRef = ref(null);

const progress = ref({
    value: 0,
    color: "red-darken-1",
});

const formRules = {
    required: (value) => Boolean(value) || "Required",
    matchWithNewPassword: (value) =>
        value === passwordData.value.newPassword ||
        "Repeated password does not match new password",
};

watch(
    () => passwordData.value.newPassword,
    () => {
        if (passwordData.value.repeatedPassword) {
            repeatedPasswordRef.value.validate();
        }
    }
);

// :disabled="!form ? !false : !form.isValid"
const isFormValid = computed(() => {
    return form.value ? form.value.isValid : false;
});

function update() {
    const changes = {
        oldPassword: passwordData.value.oldPassword,
        newPassword: passwordData.value.newPassword,
        repeatedPassword: passwordData.value.repeatedPassword,
    };
    console.log(changes);
}

function updateValid(newValid) {
    isNewPasswordValid.value = newValid;
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
</script>

<style scoped></style>
