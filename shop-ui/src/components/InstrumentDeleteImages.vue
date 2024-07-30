<template>
    <v-row>
        <v-col class="text-center">
            <h4>Click on image to mark it for deletion</h4>
        </v-col>
    </v-row>
    <v-row class="pa-2">
        <v-col
            v-for="(image, index) in images"
            :key="index"
            cols="12"
            sm="6"
            md="4"
            lg="3"
        >
            <v-card @click="toggleDelete(index)" hover>
                <v-img :src="image.url" />

                <v-expand-transition>
                    <v-card
                        v-if="image.reveal"
                        class="position-absolute w-100 expanded-card"
                        height="100%"
                    >
                        <v-card-title class="overlay">
                            Marked <br />
                            for deletion
                        </v-card-title>
                    </v-card>
                </v-expand-transition>
            </v-card>
        </v-col>
    </v-row>
</template>

<script setup>
import { defineModel, computed } from "vue";

const images = defineModel();

function toggleDelete(index) {
    images.value[index].markedForDeletion =
        !images.value[index].markedForDeletion;

    images.value[index].reveal = !images.value[index].reveal;
}

const isMarked = computed(() => {
    return images.value.some((image) => image.markedForDeletion);
});

function reset() {
    images.value.forEach((image) => {
        image.markedForDeletion = false;
        image.reveal = false;
    });
}

defineExpose({
    isMarked,
    reset,
});
</script>

<style scoped>
.overlay {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: black;
    font-size: 20px;
    text-align: center;
}

.expanded-card {
    bottom: 0;
    opacity: 0.75;
}
</style>
