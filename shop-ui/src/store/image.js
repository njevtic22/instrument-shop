import axios from "axios";
import { environment } from "@/environment/environment";

const imageUrl = `${environment.apiUrl}/images`;

function uploadImage(newImage, successCallback, errorCallback) {
    const multipartData = new FormData();
    multipartData.append("images", newImage);

    axios
        .post(imageUrl, multipartData, {
            headers: {
                "Content-Type": "multipart/form-data",
            },
        })
        .then(successCallback)
        .catch(errorCallback);
}

export { uploadImage };
