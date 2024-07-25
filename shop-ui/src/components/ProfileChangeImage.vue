<template>
    <v-form ref="form">
        <v-row class="d-flex justify-center">
            <v-col cols="6">
                <v-file-input
                    v-model="images"
                    :rules="[rules.required, rules.imageType]"
                    :loading="loading"
                    height="7"
                    color="primary"
                    label="Upload profile image"
                    accept="image/jpeg, image/jpg, image/png"
                ></v-file-input>
            </v-col>
        </v-row>
        <v-row class="d-flex justify-center">
            <v-btn
                :disabled="!isFormValid || loading"
                @click="upload"
                color="primary"
            >
                Upload
            </v-btn>
        </v-row>
        <br />
        <v-divider></v-divider>
        <br />
        <v-row class="d-flex justify-center">
            <v-btn
                :disabled="!profile.image"
                @click="deleteImage"
                color="error"
            >
                Delete image
            </v-btn>
        </v-row>
        <br />
    </v-form>
</template>

<script setup>
import { ref, computed, inject } from "vue";
import { uploadImage } from "@/store/image";
import {
    profileState,
    fetchProfile,
    updateProfileImage,
} from "@/store/profile";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const form = ref(null);

const images = ref([]);

const loading = ref(false);

const profile = profileState;

const rules = {
    required: (images) => {
        if (images.length === 0) {
            return "Required";
        }

        return true;
    },
    imageType: (images) => {
        const type = images[0].type;
        return (
            type === "image/png" ||
            type === "image/jpg" ||
            type === "image/jpeg" ||
            "Allowed image types are: jpeg, jpg, png"
        );
    },
};

function upload() {
    const toUpload = images.value[0];

    const successCallback = (response) => {
        const uploaded = response.data[0];

        const successCallback2 = () => {
            fetchProfile(errorSnack);
            loading.value = false;
            snackbar("Profile image changed", 3 * 1000);
        };

        updateProfileImage(uploaded.id, successCallback2, errorSnack);
    };

    const errorCallback = (error) => {
        errorSnack(error);
        loading.value = false;
    };

    loading.value = true;
    uploadImage(toUpload, successCallback, errorCallback);
}

function deleteImage() {
    const successCallback = () => {
        fetchProfile(errorSnack);
        snackbar("Profile image deleted", 3 * 1000);
    };

    updateProfileImage(-1, successCallback, errorSnack);
}

// :disabled="!form ? !false : !form.isValid"
const isFormValid = computed(() => {
    return form.value ? form.value.isValid : false;
});
</script>

<style scoped></style>
