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

const boughtInstruments = ref(getDefaultState());
const boughtUrl = `${environment.apiUrl}/bought-instruments`;

function fetchBoughtInstruments(errorCallback) {
    axios
        .get(boughtUrl)
        .then((response) => {
            boughtInstruments.value.data = response.data.data;
            boughtInstruments.value.totalElements = response.data.totalElements;
            boughtInstruments.value.totalPages = response.data.totalPages;
        })

        .catch(errorCallback);
}

function clear() {
    boughtInstruments.value = getDefaultState();
}

export { boughtInstruments, fetchBoughtInstruments, clear };
