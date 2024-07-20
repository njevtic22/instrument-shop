export default function containsSequence(value, sequences) {
    // if value is falsy (null, or undefined etc)
    // it does not contain any sequence
    if (!value) {
        return false;
    }

    for (const sequence of sequences) {
        if (value.length < sequence.length) {
            continue;
        }

        if (value.includes(sequence)) {
            return true;
        }
    }
    return false;
}
