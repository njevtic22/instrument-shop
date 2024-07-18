<template>
    <InstrumentTypeDialog
        v-model:dialog="dialog"
        v-model:type="type"
        :mode="dialogMode"
        @type-added="loadTypes"
    ></InstrumentTypeDialog>

    <div class="mx-auto w-50">
        <div v-if="isSalesman()" class="text-right">
            <v-btn @click="openAddDialog" class="mb-2" color="primary">
                Add type
            </v-btn>
        </div>

        <v-data-table-server
            v-model:items-per-page="size"
            :items="types.data"
            :items-length="types.totalElements"
            :items-per-page-options="sizeOptions"
            :headers="headers"
            :sort-by="sortBy"
            @update:options="updateOptions"
            item-value="id"
            class="elevation-4"
            multi-sort
            hover
        >
            <template v-slot:item.actions="{ item }">
                <v-icon class="me-2" size="small" @click="openEditDialog(item)">
                    mdi-pencil
                </v-icon>
                <v-icon size="small" @click="console.log(item)">
                    mdi-delete
                </v-icon>
            </template>

            <template v-slot:footer.prepend>
                <v-expansion-panels static elevation="0" variant="accordion">
                    <v-expansion-panel title="Filter types">
                        <v-expansion-panel-text>
                            <InstrumentTypesFilter
                                @filter="filter"
                            ></InstrumentTypesFilter>
                        </v-expansion-panel-text>
                    </v-expansion-panel>
                </v-expansion-panels>
            </template>
        </v-data-table-server>
    </div>
</template>

<script setup>
import { ref, inject } from "vue";
import { fetchTypes, types } from "@/store/instrumentType";
import { isSalesman } from "@/store/auth";

const Mode = Object.freeze({
    ADD: "ADD",
    EDIT: "EDIT",
});

const errorSnack = inject("defaultErrorSnackbar");

const dialog = ref(false);
const dialogMode = ref(Mode.ADD);

const type = ref({
    name: "",
});

const headers = [
    // {
    //     title: "ID",
    //     key: "id",
    // },
    {
        title: "Name",
        key: "name",
    },
    {
        title: "Actions",
        key: "actions",
        sortable: false,
        align: "end",
    },
];

const page = ref(0);
const size = ref(5);
const sortBy = ref([]);
let filterData = {};

const sizeOptions = [
    { value: 5, title: "5" },
    { value: 10, title: "10" },
    { value: 25, title: "25" },
    { value: 50, title: "50" },
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function filter(newFilter) {
    filterData = newFilter;
    loadTypes();
}

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    loadTypes();
}

function loadTypes() {
    fetchTypes(page.value, size.value, sortBy.value, filterData, errorSnack);
}

function openAddDialog() {
    type.value.name = "";

    dialogMode.value = Mode.ADD;
    dialog.value = true;
}

function openEditDialog(typeToEdit) {
    type.value = { ...typeToEdit };

    dialogMode.value = Mode.EDIT;
    dialog.value = true;
}
</script>

<style scoped></style>
