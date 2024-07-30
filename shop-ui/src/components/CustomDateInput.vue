<template>
    <v-menu v-model="menu" :close-on-content-click="false">
        <template v-slot:activator="{ props }">
            <v-text-field
                v-bind="props"
                v-model="formatted"
                :label="label"
                :placeholder="placeholder"
                :density="density"
                :hide-details="hideDetails"
                :bg-color="bgColor"
                @click:clear="clearModel"
                readonly
                clearable
            ></v-text-field>
        </template>
        <v-date-picker v-model="chosenDate" :firstDayOfWeek="1" hide-header>
            <template v-slot:actions>
                <v-btn
                    :disabled="!chosenDate"
                    @click="cancel"
                    style="margin-top: -40px"
                    variant="text"
                >
                    Cancel
                </v-btn>
                <v-btn
                    :disabled="!chosenDate"
                    @click="updateModel"
                    style="margin-top: -40px"
                    variant="text"
                >
                    Ok
                </v-btn>
            </template>
        </v-date-picker>
    </v-menu>
</template>

<script setup>
import { ref, watch, defineModel, computed } from "vue";

defineProps(["label", "placeholder", "hideDetails", "density", "bgColor"]);

const modelDate = defineModel();
const chosenDate = ref(null);
const menu = ref(false);

watch(modelDate, (newDate, oldDate) => {
    // to update date picker state if modelDate has been changed outside of component
    chosenDate.value = newDate;
});

const formatted = computed({
    get() {
        return modelDate.value
            ? new Date(modelDate.value).toLocaleDateString("sr-RS")
            : "";
    },
    set(newValue) {
        modelDate.value = newValue;
    },
});

function updateModel() {
    // causes watch to execute
    modelDate.value = chosenDate.value;
    menu.value = false;
}

function clearModel() {
    // causes watch to execute
    modelDate.value = null;
}

function cancel() {
    chosenDate.value = modelDate.value;
}
</script>

<style scoped></style>
