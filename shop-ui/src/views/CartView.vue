<template>
    <v-data-table-server
        v-model:items-per-page="size"
        :items="cart.data"
        :items-length="cart.totalElements"
        :items-per-page-options="sizeOptions"
        :headers="headers"
        :sort-by="sortBy"
        @update:options="updateOptions"
        @click:row="redirect"
        item-value="id"
        class="elevation-4"
        multi-sort
        hover
    >
        <template v-slot:item.images="{ value }">
            <v-carousel hide-delimiters :show-arrows="false" height="100px">
                <v-carousel-item
                    :key="value[0].id"
                    :src="value[0].url"
                ></v-carousel-item>
            </v-carousel>
        </template>

        <template v-slot:item.nameTypeMark="{ item }">
            <div><strong>Name: </strong>{{ item.name }}</div>
            <div><strong>Type: </strong>{{ item.type }}</div>
            <div><strong>Mark: </strong>{{ item.mark }}</div>
        </template>

        <template v-slot:item.quantityToBuy="{ item }">
            <v-text-field
                v-model="item.quantityToBuy"
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

        <template v-slot:footer.prepend>
            <v-toolbar color="white" flat>
                <v-toolbar-title>Total price</v-toolbar-title>

                <template v-slot:append>
                    <v-toolbar-title class="ma-2 pa-2">
                        Total price
                    </v-toolbar-title>
                </template>
            </v-toolbar>
        </template>
    </v-data-table-server>
</template>

<script setup>
import { inject, ref } from "vue";
import { useRouter } from "vue-router";
import { cart, fetchCart } from "@/store/cart";

const router = useRouter();

const errorSnack = inject("defaultErrorSnackbar");

const headers = [
    // {
    //     title: "ID",
    //     key: "id",
    // },
    {
        title: "Images",
        key: "images",
    },
    {
        title: "Name, Type, Mark",
        key: "nameTypeMark",
        align: "end",
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
    },
    {
        title: "Actions",
        key: "actions",
        align: "end",
    },
];

const page = ref(0);
const size = ref(5);
const sortBy = ref([]);

const sizeOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 50, title: "50" },
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    console.log(sortBy.value);

    loadCart();
}

function loadCart() {
    fetchCart(errorSnack);
}

function redirect(event, clickedRow) {
    router.push({
        path: `/instruments/${clickedRow.item.id}`,
        query: { type: "available" },
    });
}
</script>

<style scoped></style>
