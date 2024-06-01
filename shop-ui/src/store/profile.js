import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

function getDefaultState() {
    return {
        id: 0,
        name: "",
        surname: "",
        email: "",
        username: "",
        role: "",
        image: {
            id: 0,
            url: "",
        },
    };
}

const profileState = ref(getDefaultState());
const profileUrl = `${environment.apiUrl}/users/profile`;

function fetchProfile(errorCallback) {
    axios
        .get(profileUrl)
        .then((response) => {
            profileState.value = response.data;
        })
        .catch(errorCallback);
}

function clear() {
    profileState.value = getDefaultState();
}

export { profileState, fetchProfile, clear };
