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

const items = ref(getDefaultState());
const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceiptItems(receiptId, page, size, sort, filter, errorCallback) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const itemsUrl = `${receiptsUrl}/${receiptId}/receipt-items`;
    const pageUrl = `${itemsUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            items.value.data = response.data.data;
            items.value.totalElements = response.data.totalElements;
            items.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function clear() {
    items.value = getDefaultState();
}

export { items, fetchReceiptItems, clear };
