import createSequences from "./create-sequence";

const digits = "0123456789";
const reversedDigits = "9876543210";

const digitsPool = {};

export default function getNumericalSequences(sequenceLength) {
    if (digitsPool[sequenceLength]) {
        return digitsPool[sequenceLength];
    }

    const illegal = createSequences(sequenceLength, digits);
    illegal.push(...createSequences(sequenceLength, reversedDigits));

    digitsPool[sequenceLength] = illegal;
    return illegal;
}
