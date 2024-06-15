import createSequences from "./create-sequence";

const letters = "fghijklmnopqrstuvwxyabcdez";
const capitalLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const reversedLetters = "zyxwvutsrqponmlkjihgfedcba";
const reversedCapitalLetters = "ZYXWVUTSRQPONMLKJIHGFEDCBA";

export default function getAlphabeticalSequences(sequenceLength) {
    const illegal = createSequences(sequenceLength, letters);
    illegal.push(...createSequences(sequenceLength, capitalLetters));
    illegal.push(...createSequences(sequenceLength, reversedLetters));
    illegal.push(...createSequences(sequenceLength, reversedCapitalLetters));
    return illegal;
}
