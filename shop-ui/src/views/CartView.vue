<template>
    <div v-if="cart.totalElements === 0">
        <v-row align="stretch" class="justify-center">
            <v-col cols="2">
                <v-img
                    src="@/assets/shopping-cart.png"
                    error="Image not found"
                />
            </v-col>
        </v-row>
        <v-row align="stretch" class="justify-center">
            <v-col cols="5" class="d-flex justify-center">
                <h1>Your cart is empty</h1>
            </v-col>
        </v-row>
    </div>

    <v-data-table-server
        v-if="cart.totalElements > 0"
        v-model:items-per-page="size"
        :items="cart.data"
        :items-length="cart.totalElements"
        :items-per-page-options="sizeOptions"
        :headers="headers"
        :sort-by="sortBy"
        @update:options="updateOptions"
        item-value="id"
        class="elevation-4"
        multi-sort
        hover
        hide-default-footer
    >
        <template v-slot:item.images="{ item, value }">
            <v-carousel
                @click="redirect(item.id)"
                hide-delimiters
                :show-arrows="false"
                height="100px"
            >
                <v-carousel-item
                    class="pointer"
                    :key="value[0].id"
                    :src="value[0].url"
                ></v-carousel-item>
            </v-carousel>
        </template>

        <template v-slot:item.name,type,mark="{ item }">
            <div @click="redirect(item.id)" class="pointer">
                <div><strong>Name: </strong>{{ item.name }}</div>
                <div><strong>Type: </strong>{{ item.type }}</div>
                <div><strong>Mark: </strong>{{ item.mark }}</div>
            </div>
        </template>

        <template v-slot:item.quantityToBuy="{ item }">
            <v-text-field
                v-model="item.quantityToBuy"
                :max="item.quantity"
                min="1"
                @keydown="validateDigit"
                @click="$event.stopPropagation()"
                class="mt-4"
                type="number"
            >
            </v-text-field>
        </template>

        <template v-slot:item.batchPrice="{ item }">
            {{ (item.quantityToBuy * item.price).toFixed(2) }}
        </template>

        <template v-slot:item.actions="{ item }">
            <v-icon size="small"> mdi-close </v-icon>
        </template>

        <template v-slot:bottom>
            <v-toolbar color="white" flat>
                <template v-slot:append>
                    <v-toolbar-title class="ma-2 pa-2">
                        Total price: {{ totalPrice.toFixed(2) }}
                        <v-btn
                            :disabled="cart.totalElements === 0"
                            @click="openDialog"
                            variant="elevated"
                            color="primary"
                            class="ml-2"
                        >
                            Buy
                        </v-btn>
                    </v-toolbar-title>
                </template>
            </v-toolbar>
        </template>
    </v-data-table-server>

    <CartBuyDialog
        v-model:dialog="dialog"
        v-model:totalPrice="totalPriceToFixed"
        @confirmed="buy"
    ></CartBuyDialog>
</template>

<script setup>
import { inject, ref, computed } from "vue";
import { useRouter } from "vue-router";
import { cart, fetchCart } from "@/store/cart";
import { buyInstruments } from "@/store/boughtInstrument";

const router = useRouter();

const snackbar = inject("snackbar");
const errorSnack = inject("defaultErrorSnackbar");

const dialog = ref(false);

const headers = [
    // {
    //     title: "ID",
    //     key: "id",
    // },
    {
        title: "Images",
        key: "images",
        sortable: false,
    },
    {
        title: "Name, Type, Mark",
        key: "name,type,mark",
    },
    {
        title: "In store",
        key: "quantity",
        align: "end",
    },
    {
        title: "In cart",
        key: "quantityToBuy",
        align: "end",
        width: "15%",
        sortable: false,
    },
    {
        title: "Price",
        key: "price",
        align: "end",
    },
    {
        title: "In cart x Price",
        key: "batchPrice",
        align: "end",
        sortable: false,
    },
    {
        title: "Actions",
        key: "actions",
        align: "end",
        sortable: false,
    },
];

const totalPriceToFixed = ref(0);

const totalPrice = computed(() => {
    let totalPrice = 0;
    cart.value.data.forEach((cartItem) => {
        totalPrice += cartItem.quantityToBuy * cartItem.price;
    });
    return totalPrice;
});

const page = ref(0);
const size = ref(2 ** 31 - 1);
const sortBy = ref([]);
let filterData = {};

const sizeOptions = [
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value.length = 0;

    for (let index = 0; index < options.sortBy.length; index++) {
        const sort = options.sortBy[index];

        if (sort.key === "name,type,mark") {
            const keys = sort.key.split(",");
            for (let j = 0; j < keys.length; j++) {
                const key = keys[j];
                sortBy.value.push({
                    key: key,
                    order: sort.order,
                });
            }
        } else {
            sortBy.value.push(sort);
        }
    }

    loadCart();
}

function loadCart() {
    fetchCart(page.value, size.value, sortBy.value, filterData, errorSnack);
}
loadCart();

function redirect(id) {
    router.push({
        path: `/instruments/${id}`,
        query: { type: "available" },
    });
}

function buy(paid) {
    const payload = formPayload(paid);

    const successCallback = () => {
        snackbar("Purchase successful");
        loadCart();
    };
    buyInstruments(payload, successCallback, errorSnack);
}

function formPayload(paid) {
    const payload = {
        paid,
        instrumentQuantity: {},
    };

    for (let i = 0; i < cart.value.data.length; i++) {
        const cartItem = cart.value.data[i];

        if (cartItem.quantityToBuy > cartItem.quantity) {
            snackbar(
                "You can't buy more " +
                    cartItem.name +
                    " instruments than available"
            );
        }

        payload.instrumentQuantity[cartItem.id] = cartItem.quantityToBuy;
    }

    return payload;
}

function validateDigit(event) {
    if (event.key === " " || isNaN(Number(event.key))) {
        event.preventDefault();
    }
}

function openDialog() {
    totalPriceToFixed.value = Number(totalPrice.value.toFixed(2));
    dialog.value = true;
}
</script>

<style scoped>
.pointer {
    cursor: pointer;
}
</style>
