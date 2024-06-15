import createSequences from "./create-sequence";

const digits = "0123456789";
const reversedDigits = "9876543210";

export default function getNumericalSequences(sequenceLength) {
    const illegal = createSequences(sequenceLength, digits);
    illegal.push(...createSequences(sequenceLength, reversedDigits));
    return illegal;
}
