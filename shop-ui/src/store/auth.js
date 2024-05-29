import { ref } from "vue";
import axios from "axios";

const Role = Object.freeze({
    MANAGER: "MANAGER",
    SALESMAN: "SALESMAN",
    CUSTOMER: "CUSTOMER",
    ANONYMOUS: "ANONYMOUS",
});

const tmp = localStorage.getItem("role") || Role.ANONYMOUS;
let currentRole = ref(tmp);

function logIn(loginData, successCallback, errorCallback = () => {}) {
    axios
        .post("http://localhost:8080/api/auth/login", loginData)
        .then((response) => {
            successCallback(response);
            let storageRole = localStorage.getItem("role");
            currentRole.value = storageRole ? storageRole : Role.ANONYMOUS;
        })
        .catch(errorCallback);
}

function isAnonymous() {
    return currentRole.value === Role.ANONYMOUS;
}

export { Role, currentRole, logIn };
