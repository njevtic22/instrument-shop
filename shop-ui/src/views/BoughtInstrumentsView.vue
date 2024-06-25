<template>
    <v-row>
        <v-col cols="9">
            <v-row>
                <v-col
                    v-for="bought in boughtInstruments.data"
                    :key="bought.id"
                    cols="12"
                    sm="6"
                    md="4"
                    lg="4"
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
                            <v-card-subtitle>
                                Type: {{ bought.type }}
                            </v-card-subtitle>
                            <v-card-subtitle>
                                Mark: {{ bought.mark }}
                            </v-card-subtitle>
                        </v-card-item>

                        <v-card-text>
                            <div v-if="isCustomer()">
                                Owned: {{ bought.owned }}
                            </div>
                            <!-- Id {{ bought.id }}
                            <br /> -->
                            Code: {{ bought.code }}
                            <br />
                            Purchased: {{ formatDateTime(bought.purchased) }}
                        </v-card-text>
                    </v-card>
                </v-col>
            </v-row>
        </v-col>

        <v-col cols="3" class="fixed-form">
            <v-form>
                <v-text-field label="Title"></v-text-field>
                <v-textarea label="Description"></v-textarea>
            </v-form>
        </v-col>
    </v-row>

    <span ref="scrollTarget"></span>
</template>

<script setup>
import { inject, ref, onUnmounted } from "vue";
import { useRouter } from "vue-router";
import { isCustomer } from "@/store/auth";
import {
    boughtInstruments,
    fetchBoughtInstruments,
    clear,
} from "@/store/boughtInstrument";
import { formatDateTime } from "@/util/date";
import { useIntersectionObserver } from "@vueuse/core";

const router = useRouter();
const errorSnack = inject("defaultErrorSnackbar");

let page = -1;
let size = 20;

const scrollTarget = ref(null);

function loadBoughtInstruments() {
    // console.log("page " + page);
    // console.log("totalPages " + boughtInstruments.value.totalPages);

    if (page > boughtInstruments.value.totalPages) {
        // no more data to fetch
        return;
    }

    fetchBoughtInstruments(page, size, errorSnack);
}

useIntersectionObserver(
    scrollTarget,
    ([{ isIntersecting }]) => {
        // console.log(isIntersecting);
        if (isIntersecting) {
            page++;
            loadBoughtInstruments();
        }
    },
    {
        rootMargin: "400px",
    }
);

function redirect(instrumentId) {
    router.push(`/instruments/${instrumentId}`);
}

function handleClick(event) {
    console.log("Tag name: " + event.target.tagName);
    if (event.target.tagName === "I" || event.target.tagName === "BUTTON") {
        event.stopPropagation();
    }
}

onUnmounted(() => {
    clear();
});
</script>

<style scoped>
.fixed-form {
    position: fixed;
    right: 0;
    width: 21%;
}
</style>
