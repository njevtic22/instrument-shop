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
const userUrl = `${environment.apiUrl}/users`;
const profileUrl = `${userUrl}/profile`;

function fetchProfile(errorCallback) {
    axios
        .get(profileUrl)
        .then((response) => {
            profileState.value = response.data;
        })
        .catch(errorCallback);
}

function updateProfile(changes, successCallback, errorCallback) {
    axios
        .put(userUrl, changes)
        .then((response) => {
            profileState.value = response.data.updated;
            successCallback(response);
        })
        .catch(errorCallback);
}

function updatePassword(changes, successCallback, errorCallback) {
    const passwordUrl = `${userUrl}/password`;
    axios.put(passwordUrl, changes).then(successCallback).catch(errorCallback);
}

function updateProfileImage(imageId, successCallback, errorCallback) {
    const imageUrl = `${userUrl}/image?imageId=${imageId}`;
    axios.put(imageUrl).then(successCallback).catch(errorCallback);
}

function clear() {
    profileState.value = getDefaultState();
}

export {
    profileState,
    fetchProfile,
    updateProfile,
    updatePassword,
    updateProfileImage,
    clear,
};
