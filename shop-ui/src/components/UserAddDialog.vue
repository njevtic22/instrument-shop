<template>
    <v-dialog v-model="dialog" width="50%">
        <v-card prepend-icon="mdi-account-plus" title="Add salesman">
            <v-card-text>
                <UserAddForm v-model="user" ref="userForm"></UserAddForm>
            </v-card-text>

            <v-card-actions>
                <v-btn
                    :disabled="!userForm || !userForm.isFormValid"
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
import { ref, defineModel, inject } from "vue";
import { addUser } from "@/store/user";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const emit = defineEmits(["user-added"]);
const dialog = defineModel();

const userForm = ref(null);

const user = ref({
    name: "",
    surname: "",
    email: "",
    username: "",
    role: "SALESMAN",
    password: "",
    repeatedPassword: "",
});

async function addSalesman() {
    const valid = userForm.value.validate();
    if (!valid) {
        return;
    }

    const successCallback = () => {
        snackbar("Salesman added", 3 * 1000);
        emit("user-added");

        dialog.value = false;
        userForm.value.reset();
    };

    addUser({ ...user.value }, successCallback, errorSnack);
}

function cancel() {
    dialog.value = false;
    userForm.value.reset();
}
</script>

<style scoped></style>
