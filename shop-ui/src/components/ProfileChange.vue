<template>
    <br />
    <v-card>
        <v-tabs v-model="tab" bg-color="primary" align-tabs="center" grow>
            <v-tab prepend-icon="mdi-image-edit" value="Image"> Image </v-tab>
            <v-tab prepend-icon="mdi-account-edit" value="Profile">
                Profile
            </v-tab>
            <v-tab prepend-icon="mdi-lock" value="Password"> Password </v-tab>
        </v-tabs>

        <v-card-text>
            <v-tabs-window v-model="tab">
                <v-tabs-window-item value="Image">
                    <ProfileChangeImage></ProfileChangeImage>
                </v-tabs-window-item>

                <v-tabs-window-item value="Profile">
                    <ProfileChangeData></ProfileChangeData>
                </v-tabs-window-item>

                <v-tabs-window-item value="Password">
                    <ProfileChangePassword></ProfileChangePassword>
                </v-tabs-window-item>
            </v-tabs-window>
        </v-card-text>
    </v-card>
</template>

<script setup>
import { ref } from "vue";

const tab = ref(null);
</script>

<style scoped></style>
