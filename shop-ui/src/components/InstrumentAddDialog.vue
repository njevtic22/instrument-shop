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
                                ref="instrumentForm"
                            ></InstrumentForm>
                        </v-stepper-window-item>
                        <v-stepper-window-item :key="2" :value="2">
                            Add images
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
                                v-if="stepper.step === 2"
                                @click="addImages"
                                variant="elevated"
                                color="primary"
                            >
                                Save and close
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
import { addAvailableInstrument } from "@/store/availableInstrument";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const emit = defineEmits(["instrument-added"]);

const dialog = defineModel();

const instrumentForm = ref(null);

const loading = ref(false);

const stepper = ref({
    step: 1,
    completedFirst: false,
});

const instrument = ref({
    code: "",
    name: "",
    mark: "",
    typeId: null,
    price: null,
    quantity: null,
    description: "",
});

const images = ref([
    {
        id: -1,
        url: "",
    },
]);

async function addInstrument() {
    const valid = await instrumentForm.value.validate();
    if (!valid) {
        return;
    }

    loading.value = true;

    const newInstrument = { ...instrument.value };

    const successCallback = () => {
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

function addImages() {
    closeDialog();
}

function closeDialog() {
    instrumentForm.value.reset();
    dialog.value = false;
    stepper.value.step = 1;
}
</script>

<style scoped></style>
