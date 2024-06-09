const letters = "abcdefghijklmnopqrstuvwxyz";
const capitalLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const reversedLetters = "zyxwvutsrqponmlkjihgfedcba";
const reversedCapitalLetters = "ZYXWVUTSRQPONMLKJIHGFEDCBA";

const alphabeticalPool = {};

export default function getAlphabeticalSequences(sequenceLength) {
    if (sequenceLength > letters.length) {
        throw new Error(
            `Sequence length must not be greater than ${letters.length}.`
        );
    }

    if (sequenceLength <= 0) {
        throw new Error("Sequence length must be greater than 0.");
    }

    if (alphabeticalPool[sequenceLength]) {
        return alphabeticalPool[sequenceLength];
    }

    const illegal = [];

    for (let i = 0; i <= letters.length - sequenceLength; i++) {
        const subLetters = letters.substring(i, i + sequenceLength);
        const subCapitalLetters = capitalLetters.substring(
            i,
            i + sequenceLength
        );

        illegal.push(subLetters);
        illegal.push(subCapitalLetters);
    }

    for (let i = 0; i <= reversedLetters.length - sequenceLength; i++) {
        const subReversedLetters = reversedLetters.substring(
            i,
            i + sequenceLength
        );
        const subReversedCapitalLetters = reversedCapitalLetters.substring(
            i,
            i + sequenceLength
        );

        illegal.push(subReversedLetters);
        illegal.push(subReversedCapitalLetters);
    }

    alphabeticalPool[sequenceLength] = illegal;
    return illegal;
}
