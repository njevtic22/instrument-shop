<template>
    <v-card elevation="4">
        <v-row>
            <v-col cols="3">
                <v-card class="d-flex align-center" :height="height" flat>
                    <div>
                        <v-card-item>
                            <v-card-title class="data-font-size">
                                {{ instrument.name }}
                            </v-card-title>
                            <v-card-title class="data-font-size">
                                Price: {{ instrument.price }}
                            </v-card-title>
                        </v-card-item>
                        <v-card-text>
                            <div class="data-font-size">
                                <strong>Type:</strong> {{ instrument.type }}
                            </div>
                            <div class="data-font-size">
                                <strong>Mark:</strong> {{ instrument.mark }}
                            </div>
                            <div v-if="isAvailable()" class="data-font-size">
                                <strong>Available:</strong>
                                {{ instrument.quantity }}
                            </div>
                            <div
                                v-if="isCustomer() && isBought()"
                                class="data-font-size"
                            >
                                <strong>Owned:</strong>
                                {{ instrument.owned }}
                            </div>
                            <br />
                            <div v-if="isBought()" class="data-font-size">
                                <strong>Purchased:</strong>
                                {{ formatDateTime(instrument.purchased) }}
                            </div>
                        </v-card-text>
                    </div>
                </v-card>
            </v-col>
            <v-col cols="9">
                <v-carousel :height="height" show-arrows="hover">
                    <v-carousel-item
                        v-for="image in images"
                        :key="image.id"
                        :src="image.url"
                    >
                    </v-carousel-item>
                </v-carousel>
            </v-col>
        </v-row>

        <br />
        <v-card flat>
            <v-card-text>
                <p class="description-font-size">
                    {{ instrument.description }}
                </p>
            </v-card-text>
        </v-card>
    </v-card>
</template>

<script setup>
import { inject, ref, computed } from "vue";
import { useRoute } from "vue-router";
import { isCustomer } from "@/store/auth";
import { fetchAvailableInstrument } from "@/store/availableInstrument";
import { fetchBoughtInstrument } from "@/store/boughtInstrument";
import { formatDateTime } from "@/util/date";

const route = useRoute();
const errorSnack = inject("defaultErrorSnackbar");

const height = ref("450px");

const instrument = ref({
    id: -1,
    code: "",
    name: "",
    mark: "",
    description: "",
    price: -1,
    images: [
        {
            id: -1,
            url: "",
        },
    ],
    type: "",

    quantity: -1,

    owned: -1,
    purchased: [0, 0, 0, 0, 0, 0, 0],
});

const images = computed(() => {
    if (instrument.value.images.length === 0) {
        return [
            {
                id: -1,
                url: new URL("@/assets/no-image.png", import.meta.url).href,
            },
        ];
    }
    return instrument.value.images;
});

function fetchInstrument() {
    if (route.query.type === "available") {
        fetchA();
    } else if (route.query.type === "bought") {
        fetchB();
    } else {
        console.error(
            "Error: wrong instrument availability type: " + route.query.type
        );
    }
}
fetchInstrument();

function fetchA() {
    const successCallback = (response) => {
        instrument.value = response.data;
    };
    fetchAvailableInstrument(route.params.id, successCallback, errorSnack);
}

function fetchB() {
    const successCallback = (response) => {
        instrument.value = response.data;
    };
    fetchBoughtInstrument(route.params.id, successCallback, errorSnack);
}

function isBought() {
    return Boolean(route.query.type === "bought");
}

function isAvailable() {
    return Boolean(route.query.type === "available");
}
</script>

<style scoped>
.data-font-size {
    font-size: 1.4em;
}

.description-font-size {
    font-size: 1.2em;
}
</style>
