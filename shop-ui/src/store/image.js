import axios from "axios";
import { environment } from "@/environment/environment";

const imageUrl = `${environment.apiUrl}/images`;

function uploadImages(newImages, successCallback, errorCallback) {
    const multipartData = new FormData();
    for (let i = 0; i < newImages.length; i++) {
        const image = newImages[i];
        multipartData.append("images", image);
    }

    axios
        .post(imageUrl, multipartData, {
            headers: {
                "Content-Type": "multipart/form-data",
            },
        })
        .then(successCallback)
        .catch(errorCallback);
}

export { uploadImages };
