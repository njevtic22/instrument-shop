import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

const Role = Object.freeze({
    MANAGER: "MANAGER",
    SALESMAN: "SALESMAN",
    CUSTOMER: "CUSTOMER",
    ANONYMOUS: "ANONYMOUS",
});

const authUrl = `${environment.apiUrl}/auth`;

const tmp = localStorage.getItem("role") || Role.ANONYMOUS;
let currentRole = ref(tmp);

function logIn(loginData, successCallback, errorCallback) {
    axios
        .post(`${authUrl}/login`, loginData)
        .then((response) => {
            localStorage.setItem("token", response.data.token);
            localStorage.setItem("role", response.data.role);

            axios.defaults.headers.common["Authorization"] =
                "Bearer " + response.data.token;

            let storageRole = localStorage.getItem("role");
            currentRole.value = storageRole ? storageRole : Role.ANONYMOUS;

            successCallback(response);
        })
        .catch(errorCallback);
}

function register(registerData, successCallback, errorCallback) {
    axios
        .post(`${authUrl}/register`, registerData)
        .then((response) => {
            localStorage.setItem("token", response.data.token);
            localStorage.setItem("role", response.data.role);

            axios.defaults.headers.common["Authorization"] =
                "Bearer " + response.data.token;

            let storageRole = localStorage.getItem("role");
            currentRole.value = storageRole ? storageRole : Role.ANONYMOUS;

            successCallback(response);
        })
        .catch(errorCallback);
}

function isManager() {
    return currentRole.value === Role.MANAGER;
}

function clear() {
    currentRole.value = Role.ANONYMOUS;
}

export { Role, currentRole, logIn, register, isManager, clear };
