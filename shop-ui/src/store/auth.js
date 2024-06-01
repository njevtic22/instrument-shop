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
            successCallback(response);
            let storageRole = localStorage.getItem("role");
            currentRole.value = storageRole ? storageRole : Role.ANONYMOUS;
        })
        .catch(errorCallback);
}

function clear() {
    currentRole.value = Role.ANONYMOUS;
}

export { Role, currentRole, logIn, clear };
