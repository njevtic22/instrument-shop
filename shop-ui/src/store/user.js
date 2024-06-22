import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

function getDefaultState() {
    return {
        data: [],
        totalElements: 0,
        totalPages: 0,
    };
}

const users = ref(getDefaultState());
const usersUrl = `${environment.apiUrl}/users`;

function fetchUsers(errorCallback) {
    axios
        .get(usersUrl)
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
