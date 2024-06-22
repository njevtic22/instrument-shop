import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";
import { formFilter, formSort } from "@/util/page-filter-util";

function getDefaultState() {
    return {
        data: [],
        totalElements: 0,
        totalPages: 0,
    };
}

const users = ref(getDefaultState());
const usersUrl = `${environment.apiUrl}/users`;

function fetchUsers(page, size, sort, filter, errorCallback) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const pageUrl = `${usersUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            users.value.data = response.data.data;
            users.value.totalElements = response.data.totalElements;
            users.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function clear() {
    users.value = getDefaultState();
}

export { users, fetchUsers, clear };
