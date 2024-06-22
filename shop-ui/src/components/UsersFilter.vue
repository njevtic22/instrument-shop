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
            <v-text-field
                v-model="filter.surname"
                class="py-2"
                density="compact"
                placeholder="Search surname"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.email"
                class="py-2"
                density="compact"
                placeholder="Serach email"
                hide-details
            ></v-text-field>
            <div class="py-2">
                <v-btn @click="emitFilter" color="primary" block>Apply</v-btn>
            </div>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.username"
                class="py-2"
                density="compact"
                placeholder="Search username"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.role"
                class="py-2"
                density="compact"
                placeholder="Search role"
                hide-details
            ></v-text-field>
        </v-col>
    </v-row>
</template>

<script setup>
import { ref } from "vue";

const emit = defineEmits(["filter"]);

const filter = ref({
    name: "",
    surname: "",
    email: "",
    username: "",
    role: "",
});

function emitFilter() {
    emit("filter", { ...filter.value });
}
</script>

<style scoped></style>
