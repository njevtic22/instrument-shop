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

const types = ref(getDefaultState());
const typesUrl = `${environment.apiUrl}/instrument-types`;

function fetchTypes(errorCallback) {
    axios
        .get(typesUrl)
        .then((response) => {
            types.value.data = response.data.data;
            types.value.totalElements = response.data.totalElements;
            types.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function clear() {
    types.value = getDefaultState();
}

export { types, fetchTypes, clear };
