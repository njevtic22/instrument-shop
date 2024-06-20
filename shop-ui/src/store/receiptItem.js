import axios from "axios";
import { environment } from "@/environment/environment";

const receiptsUrl = `${environment.apiUrl}/receipts`;

function fetchReceiptItems(receiptId, successCallback, errorCallback) {
    const itemsUrl = `${receiptsUrl}/${receiptId}/receipt-items`;
    axios.get(itemsUrl).then(successCallback).catch(errorCallback);
}

export { fetchReceiptItems };
