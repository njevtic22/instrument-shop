import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

function getDefaultState() {
    return {
        data: [],
        totalElements: 0,
        totalPages: 0,
    };
}

const cart = ref(getDefaultState());
const cartUrl = `${environment.apiUrl}/carts`;

function fetchCart(errorCallback) {
    axios
        .get(cartUrl)
        .then((response) => {
            cart.value.data = response.data.data;
            cart.value.totalElements = response.data.totalElements;
            cart.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function clear() {
    cart.value = getDefaultState();
}

export { cart, fetchCart, clear };
