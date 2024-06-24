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

const receipts = ref(getDefaultState());
const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceipts(page, size, sort, filter, errorCallback) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const pageUrl = `${receiptsUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            receipts.value.data = response.data.data;
            receipts.value.totalElements = response.data.totalElements;
            receipts.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function fetchReceipt(id, successCallback, errorCallback) {
    const receiptUrl = `${receiptsUrl}/${id}`;
    axios.get(receiptUrl).then(successCallback).catch(errorCallback);
}

function fetchProfit(filter, successCallback, errorCallback) {
    const filterStr = formFilter(filter);
    const profitUrl = `${receiptsUrl}/profit?${filterStr}`;
    axios.get(profitUrl).then(successCallback).catch(errorCallback);
}

function clear() {
    receipts.value = getDefaultState();
}

export { receipts, fetchReceipts, fetchReceipt, fetchProfit, clear };
