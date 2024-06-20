function formatDateTime(dateArr) {
    return (
        dateArr[2] +
        "." +
        dateArr[1] +
        "." +
        dateArr[0] +
        ". " +
        dateArr[3] +
        ":" +
        dateArr[4] +
        ":" +
        dateArr[5]
    );
}

function toEpochMilli(date) {
    return date.getTime();
}

export { formatDateTime, toEpochMilli };
