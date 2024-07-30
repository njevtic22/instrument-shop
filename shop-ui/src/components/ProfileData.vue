<template>
    <v-row no-gutters>
        <v-col cols="4" class="d-flex flex-column align-center">
            <v-img :src="getImage()" alt="Profile image" class="profile-image">
            </v-img>
        </v-col>
        <v-col cols="8">
            <v-card-text>
                <v-row>
                    <v-col>
                        <v-text-field
                            v-model="profile.name"
                            label="Name"
                            variant="underlined"
                            readonly
                        ></v-text-field>
                    </v-col>
                    <v-col>
                        <v-text-field
                            v-model="profile.surname"
                            label="Surname"
                            variant="underlined"
                            readonly
                        ></v-text-field>
                    </v-col>
                    <v-col>
                        <v-text-field
                            v-model="profile.role"
                            label="Role"
                            variant="underlined"
                            readonly
                        ></v-text-field>
                    </v-col>
                </v-row>
                <v-row>
                    <v-col>
                        <v-text-field
                            v-model="profile.email"
                            label="Email"
                            variant="underlined"
                            readonly
                        ></v-text-field>
                    </v-col>
                    <v-col>
                        <v-text-field
                            v-model="profile.username"
                            label="Username"
                            variant="underlined"
                            readonly
                        ></v-text-field>
                    </v-col>
                </v-row>
                <v-btn
                    @click="emit('toggle-expansion')"
                    :prepend-icon="
                        expanded ? 'mdi-chevron-up' : 'mdi-chevron-down'
                    "
                    color="primary"
                >
                    Change data
                </v-btn>
            </v-card-text>
        </v-col>
    </v-row>
</template>

<script setup>
import { profileState } from "@/store/profile";

defineProps(["expanded"]);
const emit = defineEmits(["toggle-expansion"]);

const profile = profileState;

function getImage() {
    return profile.value.image
        ? profile.value.image.url
        : "/src/assets/user-logo.png";
}
</script>

<style scoped>
.profile-image {
    width: 50%;
}
</style>
