<template>
    <v-dialog v-model="dialog.show" persistent>
        <v-card :prepend-icon="dialog.icon" :title="dialog.title">
            <v-card-text>
                {{ dialog.text }}
            </v-card-text>

            <v-card-actions>
                <v-btn
                    @click="confirm(true)"
                    color="primary"
                    variant="elevated"
                >
                    {{ dialog.yesText }}
                </v-btn>
                <v-btn @click="confirm(false)" variant="elevated">
                    {{ dialog.noText }}
                </v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { ref } from "vue";

const dialog = ref({
    show: false,
    text: "",
    title: "",
    icon: "",
    yesText: "",
    noText: "",
});

let resolvePromise;

function open(
    text,
    title = "Confirm action",
    icon = "mdi-exclamation-thick",
    yesText = "Yes",
    noText = "No"
) {
    dialog.value.text = text;
    dialog.value.title = title;
    dialog.value.icon = icon;
    dialog.value.yesText = yesText;
    dialog.value.noText = noText;

    dialog.value.show = true;

    return new Promise((resolve) => {
        resolvePromise = resolve;
    });
}

function confirm(response) {
    resolvePromise(response);
    dialog.value.show = false;
}

defineExpose({
    open,
});
</script>

<style scoped></style>
