<template>
    <v-form ref="form">
        <v-row class="d-flex justify-center">
            <v-col>
                <v-file-input
                    v-model="images"
                    :rules="[rules.required, rules.imageType]"
                    :loading="loading"
                    height="7"
                    color="primary"
                    label="Upload instrument images"
                    accept="image/jpeg, image/jpg, image/png"
                    multiple
                >
                    <template v-slot:selection="{ fileNames }">
                        <template
                            v-for="(fileName, index) in fileNames"
                            :key="fileName"
                        >
                            <span v-if="index < 2"> {{ fileName }},&nbsp;</span>

                            <span
                                v-else-if="index === 2"
                                class="text-overline text-grey-darken-3 mx-2"
                            >
                                +{{ images.length - 2 }} File(s)
                            </span>
                        </template>
                    </template>
                </v-file-input>
            </v-col>
        </v-row>
        <v-row class="pa-2">
            <v-col
                v-for="(image, index) in imagesPreview"
                :key="index"
                cols="12"
                md="3"
            >
                <v-card class="card-image" flat>
                    <v-img :src="image" aspect-ratio="1"></v-img>
                    <v-btn
                        icon
                        size="x-small"
                        class="ma-2 delete-image"
                        @click="removeImage(index)"
                    >
                        <v-icon>mdi-close</v-icon>
                    </v-btn>
                </v-card>
            </v-col>
        </v-row>
    </v-form>
</template>

<script setup>
import { ref, defineModel, computed, defineExpose } from "vue";

const images = defineModel();
const form = ref(null);

const loading = ref(false);

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

const imagesPreview = computed(() => {
    return images.value.map((image) => {
        return URL.createObjectURL(image);
    });
});

function removeImage(index) {
    images.value.splice(index, 1);
}

async function validate() {
    const { valid } = await form.value.validate();
    return valid;
}

function reset() {
    images.value.length = 0;
    form.value.resetValidation();
}

const isValid = computed(() => {
    return form.value ? form.value.isValid : false;
});

defineExpose({
    isValid,
    validate,
    reset,
});
</script>

<style scoped>
.delete-image {
    position: absolute;
    top: 0;
    right: 0;
}
.card-image {
    position: relative;
}
</style>
