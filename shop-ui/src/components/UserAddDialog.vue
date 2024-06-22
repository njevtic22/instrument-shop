<template>
    <v-dialog v-model="dialog" width="50%">
        <v-card prepend-icon="mdi-account-plus" title="Add salesman">
            <v-card-text>
                <v-form ref="form">
                    <v-row>
                        <v-col>
                            <v-text-field
                                v-model="user.name"
                                label="Name"
                            ></v-text-field>
                        </v-col>
                        <v-col>
                            <v-text-field
                                v-model="user.surname"
                                label="Surname"
                            ></v-text-field>
                        </v-col>
                    </v-row>
                    <v-row>
                        <v-col>
                            <v-text-field
                                v-model="user.email"
                                label="Email"
                            ></v-text-field>
                        </v-col>
                        <v-col>
                            <v-text-field
                                v-model="user.username"
                                label="Username"
                            ></v-text-field>
                        </v-col>
                    </v-row>
                    <v-row>
                        <v-col>
                            <v-text-field
                                v-model="user.password"
                                label="Password"
                            ></v-text-field>
                        </v-col>
                        <v-col>
                            <v-text-field
                                v-model="user.repeatedPassword"
                                label="Repeated password"
                            ></v-text-field>
                        </v-col>
                    </v-row>
                    <v-row v-if="currentRole !== Role.MANAGER">
                        <v-col>
                            <v-text-field
                                v-model="user.role"
                                label="Role"
                            ></v-text-field>
                        </v-col>
                    </v-row>
                </v-form>
            </v-card-text>

            <v-card-actions>
                <v-btn @click="addUser" color="primary" variant="elevated">
                    Add
                </v-btn>
                <v-btn @click="cancel" variant="elevated"> Cancel </v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { Role, currentRole } from "@/store/auth";
import { ref, defineModel } from "vue";

const emit = defineEmits(["add-user"]);
const dialog = defineModel();

const user = ref({
    name: "",
    surname: "",
    email: "",
    username: "",
    role: "",
    password: "",
    repeatedPassword: "",
});

function addUser() {
    if (currentRole === Role.MANAGER) {
        user.value.role = "SALESMAN";
    }
    emit("add-user", { ...user.value });

    dialog.value = false;
    resetModel();
}

function cancel() {
    dialog.value = false;
    resetModel();
}

function resetModel() {
    user.value.name = "";
    user.value.surname = "";
    user.value.email = "";
    user.value.username = "";
    user.value.role = "";
    user.value.password = "";
    user.value.repeatedPassword = "";
}
</script>

<style scoped></style>
