<template>
    <v-snackbar
        v-model="visible"
        :timeout="timeout"
        :color="backgroundColor"
        :timer="accentColor"
    >
        {{ text }}

        <template v-slot:actions>
            <v-btn @click="visible = false" :color="accentColor"> Close </v-btn>
        </template>
    </v-snackbar>
</template>

<script setup>
import { ref } from "vue";

const visible = ref(false);
const text = ref("");
const backgroundColor = ref("");
const accentColor = ref("info");
const timeout = ref(-1);

function show(
    newText,
    newTimeout = -1,
    newAccentColor = "red",
    newBackgroundColor = ""
) {
    text.value = newText;
    timeout.value = newTimeout;
    accentColor.value = newAccentColor;
    backgroundColor.value = newBackgroundColor;

    visible.value = true;
}

defineExpose({
    show,
});
</script>

<style scoped></style>
