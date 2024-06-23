<template>
    <v-dialog v-model="dialog" width="50%">
        <v-card prepend-icon="mdi-account-plus" title="Add salesman">
            <v-card-text>
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
                                @click:append-inner="
                                    show.password = !show.password
                                "
                                :append-icon="
                                    show.passwordRules
                                        ? 'mdi-chevron-up'
                                        : 'mdi-chevron-down'
                                "
                                @click:append="
                                    show.passwordRules = !show.passwordRules
                                "
                                :maxlength="50"
                                :error="
                                    !isPasswordValid && Boolean(user.password)
                                "
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
                                :rules="[
                                    rules.required,
                                    rules.matchWithNewPassword,
                                ]"
                                :type="show.password ? 'text' : 'password'"
                                :append-inner-icon="
                                    show.password ? 'mdi-eye' : 'mdi-eye-off'
                                "
                                @click:append-inner="
                                    show.password = !show.password
                                "
                                label="Repeated password"
                                required
                                ref="repeatedPasswordRef"
                            ></v-text-field>
                        </v-col>
                    </v-row>
                    <v-row v-if="!isManager()">
                        <v-col>
                            <v-text-field
                                v-model="user.role"
                                label="Role"
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
            </v-card-text>

            <v-card-actions>
                <v-btn
                    :disabled="!isFormValid"
                    @click="addSalesman"
                    color="primary"
                    variant="elevated"
                >
                    Add
                </v-btn>
                <v-btn @click="cancel" variant="elevated"> Cancel </v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { ref, defineModel, computed, watch, inject } from "vue";
import { isManager } from "@/store/auth";
import { addUser } from "@/store/user";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const emit = defineEmits(["user-added"]);
const dialog = defineModel();

const form = ref(null);
const repeatedPasswordRef = ref(null);

const progress = ref({
    value: 0,
    color: "red-darken-1",
});

const user = ref({
    name: "",
    surname: "",
    email: "",
    username: "",
    role: "",
    password: "",
    repeatedPassword: "",
});

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

function updateValid(newValid) {
    isPasswordValid.value = newValid;
}

async function addSalesman() {
    const { valid } = await form.value.validate();

    if (!valid) {
        return;
    }

    if (isManager()) {
        user.value.role = "SALESMAN";
    }

    const successCallback = () => {
        snackbar("Salesman added", 3 * 1000);
        emit("user-added");

        dialog.value = false;
        reset();
    };

    addUser({ ...user.value }, successCallback, errorSnack);
}

function cancel() {
    dialog.value = false;
    reset();
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
</script>

<style scoped></style>
