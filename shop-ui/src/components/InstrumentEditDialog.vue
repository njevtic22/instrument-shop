<template>
    <v-dialog v-model="dialog" @afterLeave="closeDialog()" width="50%">
        <v-card
            :disabled="loading"
            prepend-icon="mdi-pencil"
            title="Edit instrument"
        >
            <v-card-item>
                <v-tabs
                    v-model="tab"
                    bg-color="primary"
                    align-tabs="center"
                    grow
                >
                    <v-tab
                        width="33%"
                        prepend-icon="mdi-note-edit"
                        value="Data"
                    >
                        Data
                    </v-tab>
                    <v-tab
                        width="33%"
                        prepend-icon="mdi-image-plus"
                        value="Add images"
                    >
                        Add images
                    </v-tab>
                    <v-tab
                        width="33%"
                        prepend-icon="mdi-image-remove"
                        value="Delete images"
                    >
                        Delete images
                    </v-tab>
                </v-tabs>
            </v-card-item>

            <v-card-text>
                <v-tabs-window v-model="tab">
                    <v-tabs-window-item value="Data">
                        <InstrumentForm
                            v-model="instrumentToEdit"
                            :types="types.data"
                            ref="instrumentForm"
                        ></InstrumentForm>
                        <div class="text-center">
                            <v-btn
                                @click="updateData"
                                class="ma-2"
                                color="primary"
                            >
                                Save
                            </v-btn>
                        </div>
                    </v-tabs-window-item>
                    <v-tabs-window-item value="Add images">
                        <InstrumentAddImagesForm
                            v-model="imagesToAdd"
                            ref="imagesForm"
                        >
                        </InstrumentAddImagesForm>
                        <div class="text-center">
                            <v-btn
                                @click="updateImages"
                                class="ma-2"
                                color="primary"
                            >
                                Save
                            </v-btn>
                        </div>
                    </v-tabs-window-item>
                    <v-tabs-window-item value="Delete images">
                        <InstrumentDeleteImages
                            v-model="images"
                            ref="deleteImagesRef"
                        >
                        </InstrumentDeleteImages>
                        <div class="text-center">
                            <v-btn
                                @click="deleteImages"
                                class="ma-2"
                                color="primary"
                            >
                                Delete marked
                            </v-btn>
                        </div>
                    </v-tabs-window-item>
                </v-tabs-window>
            </v-card-text>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { ref, defineModel, inject, watch } from "vue";
import { types, fetchTypes } from "@/store/instrumentType";
import { updateAvailableInstrument } from "@/store/availableInstrument";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const dialog = defineModel();
const props = defineProps(["instrument"]);

const emit = defineEmits(["instrument-updated"]);

const instrumentForm = ref(null);
const imagesForm = ref(null);
const deleteImagesRef = ref(null);

const page = 0;
const size = 2 ** 31 - 1;
const sort = [
    {
        key: "name",
        order: "asc",
    },
];
const filterData = {};
fetchTypes(page, size, sort, filterData, errorSnack);

const instrumentToEdit = ref({
    id: "",
    code: "",
    name: "",
    mark: "",
    description: "",
    price: null,
    typeId: null,

    quantity: null,
});

const images = ref([
    {
        id: -1,
        url: "",
    },
]);

const imagesToAdd = ref([]);

const loading = ref(false);

const tab = ref("Data");

watch(
    () => dialog.value,
    (newValue) => {
        resetEdit();
    }
);

function resetEdit() {
    instrumentToEdit.value.id = props.instrument.id;
    instrumentToEdit.value.code = props.instrument.code;
    instrumentToEdit.value.name = props.instrument.name;
    instrumentToEdit.value.mark = props.instrument.mark;
    instrumentToEdit.value.description = props.instrument.description;
    instrumentToEdit.value.price = props.instrument.price;
    instrumentToEdit.value.quantity = props.instrument.quantity;

    instrumentToEdit.value.typeId = getTypeId(props.instrument.type);

    images.value = props.instrument.images;
    deleteImagesRef.value?.reset();

    imagesToAdd.value.length = 0;
}

function getTypeId(typeName) {
    for (let i = 0; i < types.value.data.length; i++) {
        const type = types.value.data[i];

        if (type.name === typeName) {
            return type.id;
        }
    }
}

function updateData() {
    const changes = { ...instrumentToEdit.value };

    const successCallback = () => {
        snackbar("Instrument updated", 3000);
        emit("instrument-updated");
        closeDialog();
    };

    updateAvailableInstrument(changes, successCallback, errorSnack);
}

function updateImages() {
    console.log([...imagesToAdd.value]);
}

function deleteImages() {
    let imagesToDelete = [];
    for (let i = 0; i < images.value.length; i++) {
        const image = images.value[i];

        if (image.markedForDeletion) {
            imagesToDelete.push(image.id);
        }
    }

    console.log(imagesToDelete);
}

function closeDialog() {
    dialog.value = false;
}
</script>

<style scoped></style>
