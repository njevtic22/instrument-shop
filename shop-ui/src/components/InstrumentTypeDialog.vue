<template>
    <v-dialog v-model="dialog" width="25%">
        <v-card :prepend-icon="icon" :title="title">
            <v-card-text>
                <v-form ref="form">
                    <v-text-field
                        v-model="type.name"
                        :rules="[rules.required]"
                        label="Name"
                    ></v-text-field>
                </v-form>
            </v-card-text>

            <v-card-actions>
                <v-btn
                    :disabled="!form || !form.isValid"
                    @click="performAction"
                    color="primary"
                    variant="elevated"
                >
                    {{ buttonText }}
                </v-btn>
                <v-btn @click="cancel" variant="elevated"> Cancel </v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { ref, defineModel, inject, computed, defineExpose } from "vue";
import { addType, updateType } from "@/store/instrumentType";

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const emit = defineEmits(["type-added", "type-modified"]);
const dialog = defineModel("dialog");
const type = defineModel("type");

const props = defineProps(["mode"]);

const form = ref(null);

const rules = {
    required: (value) => Boolean(value) || "Required",
};

const Modes = Object.freeze({
    ADD: "ADD",
    EDIT: "EDIT",
});

defineExpose({
    Modes,
});

function performAction() {
    if (props.mode === "ADD") {
        addInstrumentType();
    } else if (props.mode === "EDIT") {
        editInstrumentType();
    } else {
        snackbar("Invalid mode", -1, "red-darken-1", "");
    }
}

async function addInstrumentType() {
    const { valid } = await form.value.validate();
    if (!valid) {
        return;
    }

    const successCallback = () => {
        snackbar("Instrument type added", 3 * 1000);
        emit("type-added");

        dialog.value = false;
        form.value.reset();
    };

    addType({ ...type.value }, successCallback, errorSnack);
}

async function editInstrumentType() {
    const { valid } = await form.value.validate();
    if (!valid) {
        return;
    }

    const successCallback = () => {
        snackbar("Instrument type modified", 3 * 1000);
        emit("type-modified");

        dialog.value = false;
        form.value.reset();
    };

    updateType({ ...type.value }, successCallback, errorSnack);
}

function cancel() {
    dialog.value = false;
    form.value.reset();
}

const icon = computed(() => {
    if (props.mode === "ADD") {
        return "mdi-plus";
    } else if (props.mode === "EDIT") {
        return "mdi-pencil";
    } else {
        return "Error";
    }
});

const title = computed(() => {
    if (props.mode === "ADD") {
        return "Add type";
    } else if (props.mode === "EDIT") {
        return "Edit type";
    } else {
        return "Error";
    }
});

const buttonText = computed(() => {
    if (props.mode === "ADD") {
        return "Add";
    } else if (props.mode === "EDIT") {
        return "Save";
    } else {
        return "Error";
    }
});
</script>

<style scoped></style>
