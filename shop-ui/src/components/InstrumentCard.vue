<template>
    <v-card @click="redirect(instrument.id)" hover>
        <v-carousel
            @click="handleClick"
            hide-delimiters
            show-arrows="hover"
            height="250px"
        >
            <v-carousel-item
                v-for="image in images"
                :key="image.id"
                :src="image.url"
            >
            </v-carousel-item>
        </v-carousel>

        <v-card-item>
            <v-card-title>{{ instrument.name }}</v-card-title>
            <v-card-title>Price: {{ instrument.price }}</v-card-title>
            <v-card-subtitle> Type: {{ instrument.type }} </v-card-subtitle>
            <v-card-subtitle> Mark: {{ instrument.mark }} </v-card-subtitle>
        </v-card-item>

        <v-card-text>
            <!-- Id {{ instrument.id }}
                            <br /> -->
            <div v-if="isAvailable()">Available: {{ instrument.quantity }}</div>
            <div v-if="isCustomer() && isBought()">
                Owned: {{ instrument.owned }}
            </div>
            Code: {{ instrument.code }}
            <br />
            <div v-if="isBought()">
                Purchased: {{ formatDateTime(instrument.purchased) }}
            </div>
        </v-card-text>
    </v-card>
</template>

<script setup>
import { computed } from "vue";
import { useRouter } from "vue-router";
import { isCustomer } from "@/store/auth";
import { formatDateTime } from "@/util/date";

const router = useRouter();

const props = defineProps(["instrument"]);

const images = computed(() => {
    if (props.instrument.images.length === 0) {
        return [
            {
                id: -1,
                url: new URL("@/assets/no-image.png", import.meta.url).href,
            },
        ];
    }
    return props.instrument.images;
});

function redirect(instrumentId) {
    router.push({
        path: `/instruments/${instrumentId}`,
        query: { type: isAvailable() ? "available" : "bought" },
    });
}

function handleClick(event) {
    console.log("Tag name: " + event.target.tagName);
    if (event.target.tagName === "I" || event.target.tagName === "BUTTON") {
        event.stopPropagation();
    }
}

function isBought() {
    return Boolean(props.instrument.purchased);
}

function isAvailable() {
    return Boolean(props.instrument.quantity);
}
</script>

<style scoped></style>
