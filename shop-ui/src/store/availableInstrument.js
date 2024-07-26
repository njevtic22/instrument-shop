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

const availableInstruments = ref(getDefaultState());
const availableUrl = `${environment.apiUrl}/available-instruments`;

function fetchAvailableInstruments(page, size, sort, filter, errorCallback) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const pageUrl = `${availableUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            availableInstruments.value.data.push(...response.data.data);
            availableInstruments.value.totalElements =
                response.data.totalElements;
            availableInstruments.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function fetchAvailableInstrument(id, successCallback, errorCallback) {
    const url = `${availableUrl}/${id}`;
    axios.get(url).then(successCallback).catch(errorCallback);
}

function addAvailableInstrument(newInstrument, successCallback, errorCallback) {
    axios
        .post(availableUrl, newInstrument)
        .then(successCallback)
        .catch(errorCallback);
}

function clear() {
    availableInstruments.value = getDefaultState();
}

export {
    availableInstruments,
    fetchAvailableInstruments,
    fetchAvailableInstrument,
    addAvailableInstrument,
    clear,
};
