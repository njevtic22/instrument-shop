<template>
    <v-data-table-server
        v-model:items-per-page="size"
        :items="users.data"
        :items-length="users.totalElements"
        :items-per-page-options="sizeOptions"
        :headers="headers"
        :sort-by="sortBy"
        @update:options="updateOptions"
        item-value="id"
        class="elevation-4"
        multi-sort
        hover
    >
        <template v-slot:footer.prepend>
            <v-expansion-panels static elevation="0" variant="accordion">
                <v-expansion-panel title="Filter users">
                    <v-expansion-panel-text>
                        <UsersFilter @filter="filter"></UsersFilter>
                    </v-expansion-panel-text>
                </v-expansion-panel>
            </v-expansion-panels>
        </template>
    </v-data-table-server>
</template>

<script setup>
import { ref, inject } from "vue";
import { users, fetchUsers } from "@/store/user";

const errorSnack = inject("defaultErrorSnackbar");

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
        title: "Surname",
        key: "surname",
        align: "end",
    },
    {
        title: "Email",
        key: "email",
        align: "end",
    },
    {
        title: "Username",
        key: "username",
        align: "end",
    },
    {
        title: "Role",
        key: "role",
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
    { value: 2 ** 31 - 1, title: "$vuetify.dataFooter.itemsPerPageAll" },
];

function filter(newFilter) {
    filterData = newFilter;
    loadUsers();
}

function updateOptions(options) {
    page.value = options.page - 1;
    size.value = options.itemsPerPage;
    sortBy.value = options.sortBy;
    // groupBy.value = options.groupBy;

    loadUsers();
}

function loadUsers() {
    fetchUsers(page.value, size.value, sortBy.value, filterData, errorSnack);
}
</script>

<style scoped></style>
