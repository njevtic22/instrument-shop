<template>
    <v-row>
        <v-col
            v-for="bought in boughtInstruments.data"
            :key="bought.id"
            cols="12"
            sm="6"
            md="4"
            lg="3"
        >
            <v-card @click="redirect(bought.id)" hover>
                <v-carousel
                    @click="handleClick"
                    hide-delimiters
                    show-arrows="hover"
                    height="250px"
                >
                    <v-carousel-item
                        v-for="image in bought.images"
                        :key="image.id"
                        :src="image.url"
                    >
                    </v-carousel-item>
                </v-carousel>

                <v-card-item>
                    <v-card-title>{{ bought.name }}</v-card-title>
                    <v-card-subtitle>Type: {{ bought.type }}</v-card-subtitle>
                    <v-card-subtitle>Mark: {{ bought.mark }}</v-card-subtitle>
                </v-card-item>

                <v-card-text>
                    <div v-if="isCustomer()">Owned: {{ bought.owned }}</div>
                    <!-- Id {{ bought.id }}
                    <br /> -->
                    Code: {{ bought.code }}
                    <br />
                    Purchased: {{ formatDateTime(bought.purchased) }}
                </v-card-text>
            </v-card>
        </v-col>
    </v-row>
</template>

<script setup>
import { inject } from "vue";
import { useRouter } from "vue-router";
import { isCustomer } from "@/store/auth";
import {
    boughtInstruments,
    fetchBoughtInstruments,
} from "@/store/boughtInstrument";
import { formatDateTime } from "@/util/date";

const router = useRouter();
const errorSnack = inject("defaultErrorSnackbar");

fetchBoughtInstruments(errorSnack);

function redirect(instrumentId) {
    router.push(`/instruments/${instrumentId}`);
}

function handleClick(event) {
    console.log("Tag name: " + event.target.tagName);
    if (event.target.tagName === "I" || event.target.tagName === "BUTTON") {
        event.stopPropagation();
    }
}
</script>

<style scoped></style>
