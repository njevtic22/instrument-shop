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
                    <v-btn
                        @click="showChange = !showChange"
                        :prepend-icon="
                            showChange ? 'mdi-chevron-up' : 'mdi-chevron-down'
                        "
                        color="primary"
                        >Change data</v-btn
                    >
                </v-card-text>
            </v-col>
        </v-row>
        <v-expand-transition>
            <div v-show="showChange">
                <v-divider></v-divider>
                <div class="d-flex flex-row">
                    <v-tabs
                        v-model="tab"
                        bg-color="primary"
                        direction="vertical"
                    >
                        <v-tab
                            prepend-icon="mdi-image-edit"
                            text="Image"
                            value="Image"
                        ></v-tab>
                        <v-tab
                            prepend-icon="mdi-account-edit"
                            text="Profile"
                            value="Profile"
                        ></v-tab>
                        <v-tab
                            prepend-icon="mdi-lock"
                            text="Password"
                            value="Password"
                        ></v-tab>
                    </v-tabs>
                    <v-tabs-window v-model="tab">
                        <v-tabs-window-item value="Image">
                            <v-card flat>
                                <v-card-text>
                                    <h1>Changing image</h1>
                                </v-card-text>
                            </v-card>
                        </v-tabs-window-item>

                        <v-tabs-window-item value="Profile">
                            <v-card flat>
                                <v-card-text>
                                    <h1>Changing profile</h1>
                                </v-card-text>
                            </v-card>
                        </v-tabs-window-item>

                        <v-tabs-window-item value="Password">
                            <v-card flat>
                                <v-card-text>
                                    <h1>Changing password</h1>
                                </v-card-text>
                            </v-card>
                        </v-tabs-window-item>
                    </v-tabs-window>
                </div>
            </div>
        </v-expand-transition>
    </v-card>
</template>

<script setup>
import { inject, ref } from "vue";
import { profileState, fetchProfile } from "@/store/profile";

const errorSnack = inject("defaultErrorSnackbar");
const profile = profileState;
fetchProfile(errorSnack);

const tab = ref(null);
const showChange = ref(false);
</script>

<style scoped>
.profile-image {
    width: 50%;
}
</style>
