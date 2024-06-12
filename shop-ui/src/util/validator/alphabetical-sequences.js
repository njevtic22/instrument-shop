import createSequences from "./create-sequence";

const letters = "fghijklmnopqrstuvwxyabcdez";
const capitalLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const reversedLetters = "zyxwvutsrqponmlkjihgfedcba";
const reversedCapitalLetters = "ZYXWVUTSRQPONMLKJIHGFEDCBA";

const alphabeticalPool = {};

export default function getAlphabeticalSequences(sequenceLength) {
    if (alphabeticalPool[sequenceLength]) {
        return alphabeticalPool[sequenceLength];
    }

    const illegal = createSequences(sequenceLength, letters);
    illegal.push(...createSequences(sequenceLength, capitalLetters));
    illegal.push(...createSequences(sequenceLength, reversedLetters));
    illegal.push(...createSequences(sequenceLength, reversedCapitalLetters));

    alphabeticalPool[sequenceLength] = illegal;
    return illegal;
}
