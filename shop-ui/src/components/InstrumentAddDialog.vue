<template>
    <v-dialog v-model="dialog" @afterLeave="closeDialog()" width="50%">
        <v-card
            :disabled="loading"
            prepend-icon="mdi-plus"
            title="Add new instrument"
        >
            <v-card-text>
                <v-stepper flat v-model="stepper.step">
                    <v-stepper-header>
                        <v-stepper-item
                            title="Instrument data"
                            :value="1"
                            :complete="stepper.completedFirst"
                        ></v-stepper-item>
                        <v-divider></v-divider>
                        <v-stepper-item
                            title="Instrument images"
                            :value="2"
                            :complete="stepper.completedSecond"
                        ></v-stepper-item>
                    </v-stepper-header>

                    <v-stepper-window>
                        <v-stepper-window-item :key="1" :value="1">
                            <InstrumentForm
                                v-model="instrument"
                                :types="types.data"
                                ref="instrumentForm"
                            ></InstrumentForm>
                        </v-stepper-window-item>
                        <v-stepper-window-item :key="2" :value="2">
                            <InstrumentAddImagesForm
                                v-model="images"
                                ref="imagesForm"
                            ></InstrumentAddImagesForm>
                        </v-stepper-window-item>
                    </v-stepper-window>

                    <v-stepper-actions :disabled="false">
                        <template v-slot:next>
                            <v-btn
                                :disabled="
                                    !instrumentForm || !instrumentForm.isValid
                                "
                                :loading="loading"
                                v-if="stepper.step === 1"
                                @click="addInstrument"
                                variant="elevated"
                                color="primary"
                            >
                                Save and next
                            </v-btn>
                            <v-btn
                                :disabled="!imagesForm || !imagesForm.isValid"
                                v-if="stepper.step === 2"
                                :loading="loading"
                                @click="addImagesToUploadedInstrument"
                                variant="elevated"
                                color="primary"
                            >
                                Save and close
                            </v-btn>
                            <v-btn
                                @click="closeDialog"
                                class="ml-2"
                                variant="elevated"
                            >
                                <span v-if="stepper.step === 1">Cancel</span>
                                <span v-if="stepper.step === 2">Skip</span>
                            </v-btn>
                        </template>
                        <template v-slot:prev>
                            <v-spacer></v-spacer>
                        </template>
                    </v-stepper-actions>
                </v-stepper>
            </v-card-text>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { ref, defineModel, inject } from "vue";
import { addAvailableInstrument, addImages } from "@/store/availableInstrument";
import { uploadImages } from "@/store/image";
import { types, fetchTypes } from "@/store/instrumentType";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const emit = defineEmits(["instrument-added", "images-added"]);

const dialog = defineModel();

const instrumentForm = ref(null);
const imagesForm = ref(null);

const loading = ref(false);

const stepper = ref({
    step: 1,
    completedFirst: false,
});

const page = 0;
const size = 2 ** 31 - 1;
const sort = [{ key: "name", order: "asc" }];
const filterData = {};
fetchTypes(page, size, sort, filterData, errorSnack);

const instrument = ref({
    code: "",
    name: "",
    mark: "",
    typeId: null,
    price: null,
    quantity: null,
    description: "",
});

let uploadedId = -1;

const images = ref([]);

async function addInstrument() {
    const valid = await instrumentForm.value.validate();
    if (!valid) {
        return;
    }

    loading.value = true;

    const newInstrument = { ...instrument.value };

    const successCallback = (response) => {
        let index = response.headers.location.lastIndexOf("/");
        uploadedId = Number(response.headers.location.substring(index + 1));

        snackbar("Instrument added", 3 * 1000);
        emit("instrument-added", newInstrument);

        loading.value = false;

        stepper.value.step++;
        stepper.value.completedFirst = true;
    };
    const errorCallback = (error) => {
        errorSnack(error);
        loading.value = false;
    };
    addAvailableInstrument(newInstrument, successCallback, errorCallback);
}

async function addImagesToUploadedInstrument() {
    if (uploadedId === -1 || isNaN(uploadedId)) {
        console.error("Instrument is not uploaded");
        return;
    }

    const valid = await imagesForm.value.validate();
    if (!valid) {
        return;
    }

    const toUpload = [...images.value];

    const successCallback = (response) => {
        console.log("successCallback");
        const imageIds = response.data.map((image) => image.id);

        const successCallback2 = () => {
            console.log("successCallback 2");
            emit("images-added");
            loading.value = false;
            closeDialog();
        };

        addImages(uploadedId, imageIds, successCallback2, errorSnack);
    };

    const errorCallback = (error) => {
        console.log("errorCallback");
        errorSnack(error);
        loading.value = false;
    };
    loading.value = true;
    console.log("uploadImages");
    uploadImages(toUpload, successCallback, errorCallback);
}

function closeDialog() {
    instrumentForm.value.reset();
    imagesForm.value?.reset();
    dialog.value = false;
    stepper.value.step = 1;
}
</script>

<style scoped></style>
