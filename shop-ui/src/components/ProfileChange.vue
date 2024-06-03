<template>
    <div v-show="showPanel">
        <br />
        <v-divider></v-divider>
        <v-card>
            <v-tabs v-model="tab" bg-color="primary" align-tabs="center" grow>
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
                        <ProfileChangeData></ProfileChangeData>
                    </v-tabs-window-item>

                    <v-tabs-window-item value="Password">
                        <ProfileChangePassword></ProfileChangePassword>
                    </v-tabs-window-item>
                </v-tabs-window>
            </v-card-text>
        </v-card>
    </div>
</template>

<script setup>
import { ref, defineProps } from "vue";

const tab = ref(null);
const props = defineProps(["showPanel"]);
</script>

<style scoped></style>
