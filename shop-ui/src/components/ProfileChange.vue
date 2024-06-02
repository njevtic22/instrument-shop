<template>
    <v-expand-transition>
        <div v-show="showPanel">
            <br />
            <v-divider></v-divider>
            <v-card>
                <v-tabs
                    v-model="tab"
                    bg-color="primary"
                    align-tabs="center"
                    grow
                >
                    <v-tab prepend-icon="mdi-image-edit" value="Image">
                        Image
                    </v-tab>
                    <v-tab prepend-icon="mdi-account-edit" value="Profile">
                        Profile
                    </v-tab>
                    <v-tab prepend-icon="mdi-lock" value="Password">
                        Password
                    </v-tab>
                </v-tabs>

                <v-card-text>
                    <v-tabs-window v-model="tab">
                        <v-tabs-window-item value="Image">
                            <ProfileChangeImage></ProfileChangeImage>
                        </v-tabs-window-item>

                        <v-tabs-window-item value="Profile">
                            <ProfileChangeData
                                @change-profile="changeProfile"
                            ></ProfileChangeData>
                        </v-tabs-window-item>

                        <v-tabs-window-item value="Password">
                            <ProfileChangePassword></ProfileChangePassword>
                        </v-tabs-window-item>
                    </v-tabs-window>
                </v-card-text>
            </v-card>
        </div>
    </v-expand-transition>
</template>

<script setup>
import { ref, defineProps, inject } from "vue";
import { updateProfile } from "@/store/profile";
import axios from "axios";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const tab = ref(null);
const props = defineProps(["showPanel"]);

function changeProfile(changes) {
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
