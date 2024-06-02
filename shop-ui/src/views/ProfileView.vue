<template>
    <v-card class="mx-auto" width="90%">
        <v-row no-gutters>
            <v-col cols="4" class="d-flex flex-column align-center">
                <v-img
                    :src="profile.image.url"
                    alt="Profile Image"
                    class="profile-image"
                ></v-img>
            </v-col>
            <v-col cols="8">
                <v-card-text>
                    <v-row>
                        <v-col cols="4">
                            <v-text-field
                                v-model="profile.name"
                                label="Name"
                                variant="underlined"
                                readonly
                            ></v-text-field>
                            <v-text-field
                                v-model="profile.email"
                                label="Email"
                                variant="underlined"
                                readonly
                            ></v-text-field>
                        </v-col>
                        <v-col cols="4">
                            <v-text-field
                                v-model="profile.surname"
                                label="Surname"
                                variant="underlined"
                                readonly
                            ></v-text-field>
                            <v-text-field
                                v-model="profile.username"
                                label="Username"
                                variant="underlined"
                                readonly
                            ></v-text-field>
                        </v-col>
                        <v-col cols="4">
                            <v-text-field
                                v-model="profile.role"
                                label="Role"
                                variant="underlined"
                                readonly
                            ></v-text-field>
                        </v-col>
                    </v-row>
                    <v-btn color="primary">Change data</v-btn>
                </v-card-text>
            </v-col>
        </v-row>
    </v-card>
</template>

<script setup>
import { inject } from "vue";
import { profileState, fetchProfile } from "@/store/profile";

const errorSnack = inject("defaultErrorSnackbar");
const profile = profileState;
fetchProfile(errorSnack);
</script>

<style scoped>
.profile-image {
    width: 50%;
}
</style>
