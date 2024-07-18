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

const types = ref(getDefaultState());
const typesUrl = `${environment.apiUrl}/instrument-types`;

function fetchTypes(page, size, sort, filter, errorCallback) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const pageUrl = `${typesUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            types.value.data = response.data.data;
            types.value.totalElements = response.data.totalElements;
            types.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function addType(newType, successCallback, errorCallback) {
    axios.post(typesUrl, newType).then(successCallback).catch(errorCallback);
}

function updateType(changes, successCallback, errorCallback) {
    const updateUrl = `${typesUrl}/${changes.id}`;
    axios.put(updateUrl, changes).then(successCallback).catch(errorCallback);
}

function deleteType(typeId, successCallback, errorCallback) {
    const deleteUrl = `${typesUrl}/${typeId}`;
    axios.delete(deleteUrl).then(successCallback).catch(errorCallback);
}

function clear() {
    types.value = getDefaultState();
}

export { types, fetchTypes, addType, updateType, deleteType, clear };
