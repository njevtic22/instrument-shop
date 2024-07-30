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

function updateAvailableInstrument(changes, successCallback, errorCallback) {
    const url = `${availableUrl}/${changes.id}`;
    axios.put(url, changes).then(successCallback).catch(errorCallback);
}

function deleteAvailableInstrument(id, successCallback, errorCallback) {
    const url = `${availableUrl}/${id}`;
    axios.delete(url).then(successCallback).catch(errorCallback);
}

function addImages(instrumentId, imageIds, successCallback, errorCallback) {
    const imagesQuery = formImageIdsQuery(imageIds);
    const url = `${availableUrl}/${instrumentId}/images?${imagesQuery}`;
    axios.put(url).then(successCallback).catch(errorCallback);
}

function deleteImages(instrumentId, imageIds, successCallback, errorCallback) {
    const imagesQuery = formImageIdsQuery(imageIds);
    const url = `${availableUrl}/${instrumentId}/images?${imagesQuery}`;
    axios.delete(url).then(successCallback).catch(errorCallback);
}

function formImageIdsQuery(imageIds) {
    let query = "";
    for (let i = 0; i < imageIds.length; i++) {
        const imageId = imageIds[i];

        query += "imageIds=" + imageId + "&";
    }

    if (query.length > 0) {
        query = query.substring(0, query.length - 1);
    }

    return query;
}

function clear() {
    availableInstruments.value = getDefaultState();
}

export {
    availableInstruments,
    fetchAvailableInstruments,
    fetchAvailableInstrument,
    addAvailableInstrument,
    updateAvailableInstrument,
    deleteAvailableInstrument,
    addImages,
    deleteImages,
    clear,
};
