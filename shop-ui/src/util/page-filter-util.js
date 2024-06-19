function formSort(sortArr) {
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

function formFilter(filter) {
    let filterStr = "";
    for (const [key, value] of Object.entries(filter)) {
        if (value) {
            filterStr += `filter=${key}-${value}&`;
        }
    }

    if (filterStr.length > 0) {
        filterStr = filterStr.substring(0, filterStr.length - 1);
    }

    return filterStr;
}

export { formSort, formFilter };
