import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";
import { formSort } from "@/util/page-filter-util";

function getDefaultState() {
    return {
        data: [],
        totalElements: 0,
        totalPages: 0,
    };
}

const boughtInstruments = ref(getDefaultState());
const boughtUrl = `${environment.apiUrl}/bought-instruments`;

function fetchBoughtInstruments(page, size, sort, errorCallback) {
    const sortStr = formSort(sort);
    const pageUrl = `${boughtUrl}?page=${page}&size=${size}&${sortStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            boughtInstruments.value.data.push(...response.data.data);
            boughtInstruments.value.totalElements = response.data.totalElements;
            boughtInstruments.value.totalPages = response.data.totalPages;
        })

        .catch(errorCallback);
}

function clear() {
    boughtInstruments.value = getDefaultState();
}

export { boughtInstruments, fetchBoughtInstruments, clear };
