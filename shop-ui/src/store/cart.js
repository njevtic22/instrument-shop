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

const cart = ref(getDefaultState());
const cartUrl = `${environment.apiUrl}/carts`;

function fetchCart(page, size, sort, filter, errorCallback) {
    const sortStr = formSort(sort);
    const filterStr = formFilter(filter);
    const pageUrl = `${cartUrl}?page=${page}&size=${size}&${sortStr}&${filterStr}`;
    axios
        .get(pageUrl)
        .then((response) => {
            cart.value.data = response.data.data;
            cart.value.totalElements = response.data.totalElements;
            cart.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function removeFromCart(instrumentId, successCallback, errorCallback) {
    axios
        .delete(cartUrl, {
            data: {
                instrumentId,
            },
        })
        .then(successCallback)
        .catch(errorCallback);
}

function clear() {
    cart.value = getDefaultState();
}

export { cart, fetchCart, removeFromCart, clear };
