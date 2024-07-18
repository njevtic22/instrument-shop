<template>
    <v-row>
        <v-col>
            <v-text-field
                v-model="filter.name"
                class="py-2"
                density="compact"
                placeholder="Search name"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <div class="py-2">
                <v-btn @click="emitFilter" color="primary" block>Apply</v-btn>
            </div>
        </v-col>
    </v-row>
</template>

<script setup>
import { ref } from "vue";

const emit = defineEmits(["filter"]);

const filter = ref({
    name: "",
});

function emitFilter() {
    emit("filter", { ...filter.value });
}
</script>

<style scoped></style>
