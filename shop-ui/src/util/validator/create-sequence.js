export default function createSequences(sequenceLength, alphabet) {
    if (sequenceLength > alphabet.length) {
        throw new Error(
            `Sequence length must not be greater than ${alphabet.length}.`
        );
    }

    if (sequenceLength <= 0) {
        throw new Error("Sequence length must be greater than 0.");
    }

    const illegal = [];

    for (let i = 0; i <= alphabet.length - sequenceLength; i++) {
        const subDigits = alphabet.substring(i, i + sequenceLength);
        illegal.push(subDigits);
    }

    return illegal;
}
