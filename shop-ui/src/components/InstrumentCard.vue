<template>
    <v-card @click="redirect(instrument.id)" hover>
        <v-carousel
            @click="handleClick"
            hide-delimiters
            show-arrows="hover"
            height="250px"
        >
            <v-carousel-item
                v-for="image in instrument.images"
                :key="image.id"
                :src="image.url"
            >
            </v-carousel-item>
        </v-carousel>

        <v-card-item>
            <v-card-title>{{ instrument.name }}</v-card-title>
            <v-card-subtitle> Type: {{ instrument.type }} </v-card-subtitle>
            <v-card-subtitle> Mark: {{ instrument.mark }} </v-card-subtitle>
        </v-card-item>

        <v-card-text>
            <div v-if="isCustomer()">Owned: {{ instrument.owned }}</div>
            <!-- Id {{ instrument.id }}
                            <br /> -->
            Code: {{ instrument.code }}
            <br />
            <div v-if="instrument.purchased">
                Purchased: {{ formatDateTime(instrument.purchased) }}
            </div>
        </v-card-text>
    </v-card>
</template>

<script setup>
import { useRouter } from "vue-router";
import { isCustomer } from "@/store/auth";
import { formatDateTime } from "@/util/date";

const router = useRouter();

defineProps(["instrument"]);

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
