import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";
import { formFilter, formSort } from "@/util/page-filter-util";

function getDefaultState() {
    return [];
}

const receipts = ref(getDefaultState());
const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceipts(
    page,
    size,
    sort,
    filter,
    successCallback,
    errorCallback
) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const pageUrl = `${receiptsUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            receipts.value = response.data.data;
            successCallback(response);
        })
        .catch(errorCallback);
}

export { receipts, fetchReceipts };
