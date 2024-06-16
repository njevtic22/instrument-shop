import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

function getDefaultState() {
    return [];
}

const receipts = ref(getDefaultState());
const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceipts(errorCallback) {
    axios
        .get(receiptsUrl)
        .then((response) => {
            receipts.value = response.data.data;
        })
        .catch(errorCallback);
}

export { receipts, fetchReceipts };
