import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

function getDefaultState() {
    return [];
}

const receipts = ref(getDefaultState());
const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceipts(page, size, successCallback, errorCallback) {
    const pageUrl = `${receiptsUrl}?page=${page}&size=${size}`;
    axios
        .get(pageUrl)
        .then((response) => {
            receipts.value = response.data.data;
            successCallback(response);
        })
        .catch(errorCallback);
}

export { receipts, fetchReceipts };
