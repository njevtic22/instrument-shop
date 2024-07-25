<template>
    <v-dialog v-model="dialog" width="50%">
        <v-card prepend-icon="mdi-plus" title="Add new instrument">
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
                            ></InstrumentForm>
                        </v-stepper-window-item>
                        <v-stepper-window-item :key="2" :value="2">
                            Add images
                        </v-stepper-window-item>
                    </v-stepper-window>

                    <v-stepper-actions :disabled="false">
                        <template v-slot:next>
                            <v-btn
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

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const dialog = defineModel();

const stepper = ref({
    step: 1,
    completedFirst: false,
});

const instrument = ref({
    id: -1,
    code: "",
    name: "",
    mark: "",
    description: "",
    price: -1,
    images: {
        id: -1,
        url: "",
    },
    type: "",
    quantity: -1,
});

function addInstrument() {
    stepper.value.step++;
    stepper.value.completedFirst = true;
}

function addImages() {
    dialog.value = false;
    stepper.value.step = 1;
}
</script>

<style scoped></style>
