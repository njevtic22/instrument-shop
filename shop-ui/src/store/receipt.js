import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";
import formSort from "@/util/form-sort";

function getDefaultState() {
    return [];
}

const receipts = ref(getDefaultState());
const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceipts(page, size, sort, successCallback, errorCallback) {
    const sortStr = formSort(sort);
    const pageUrl = `${receiptsUrl}?page=${page}&size=${size}&${sortStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            receipts.value = response.data.data;
            successCallback(response);
        })
        .catch(errorCallback);
}

export { receipts, fetchReceipts };
