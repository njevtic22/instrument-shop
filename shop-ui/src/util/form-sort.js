export default function formSort(sortArr) {
    let sortStr = "";

    for (let i = 0; i < sortArr.length; i++) {
        const sort = sortArr[i];
        sortStr += `sort=${sort.key},${sort.order}&`;
    }

    if (sortStr.length > 0) {
        sortStr = sortStr.substring(0, sortStr.length - 1);
    }

    return sortStr;
}
