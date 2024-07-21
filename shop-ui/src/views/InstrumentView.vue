<template>
    <v-row>
        <v-col cols="3">
            <v-card
                class="d-flex align-center"
                height="500px"
                flat
                :color="
                    $vuetify.theme.themes.myCustomLightTheme.colors.background
                "
            >
                <div>
                    <v-card-item>
                        <v-card-title>{{ instrument.name }}</v-card-title>
                        <v-card-title
                            >Price: {{ instrument.price }}</v-card-title
                        >
                    </v-card-item>
                    <v-card-text>
                        <div><strong>Type:</strong> {{ instrument.type }}</div>
                        <div><strong>Mark:</strong> {{ instrument.mark }}</div>
                        <div v-if="isAvailable()">
                            <strong>Available:</strong>
                            {{ instrument.quantity }}
                        </div>
                        <div v-if="isCustomer() && isBought()">
                            <strong>Owned:</strong> {{ instrument.owned }}
                        </div>
                        <br />
                        <div v-if="isBought()">
                            <strong>Purchased:</strong>
                            {{ formatDateTime(instrument.purchased) }}
                        </div>
                    </v-card-text>
                </div>
            </v-card>
        </v-col>
        <v-col cols="9">
            <v-carousel height="500px">
                <v-carousel-item
                    v-for="image in instrument.images"
                    :key="image.id"
                    :src="image.url"
                >
                </v-carousel-item>
            </v-carousel>
        </v-col>
    </v-row>
    <br />
    <v-card>
        <v-card-text>
            {{ instrument.description }}
        </v-card-text>
    </v-card>
</template>

<script setup>
import { inject, ref } from "vue";
import { useRoute } from "vue-router";
import { isCustomer } from "@/store/auth";
import { fetchAvailableInstrument } from "@/store/availableInstrument";
import { fetchBoughtInstrument } from "@/store/boughtInstrument";
import { formatDateTime } from "@/util/date";

const route = useRoute();
const errorSnack = inject("defaultErrorSnackbar");

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

    owned: -1,
    purchased: [0, 0, 0, 0, 0, 0, 0],
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

<style scoped></style>
