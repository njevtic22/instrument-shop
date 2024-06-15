import createSequences from "./create-sequence";

const row1 = "`1234567890-=";
const capitalRow1 = "~!@#$%^&*()_+";

const row2 = "qwertyuiop[]\\";
const capitalRow2 = "QWERTYUIOP{}|";

const row3 = "asdfghjkl;'";
const capitalRow3 = 'ASDFGHJKL:"';

const row4 = "zxcvbnm,./";
const capitalRow4 = "ZXCVBNM<>?";

//
const reversedRow1 = "=-0987654321`";
const reversedCapitalRow1 = "+_)(*&^%$#@!~";

const reversedRow2 = "\\][poiuytrewq";
const reversedCapitalRow2 = "|}{POIUYTREWQ";

const reversedRow3 = "';lkjhgfdsa";
const reversedCapitalRow3 = '":LKJHGFDSA';

const reversedRow4 = "/.,mnbvcxz";
const reversedCapitalRow4 = "?><MNBVCXZ";

export default function getQwertySequences(sequenceLength) {
    const illegal = createSequences(sequenceLength, row1);
    illegal.push(...createSequences(sequenceLength, capitalRow1));
    illegal.push(...createSequences(sequenceLength, row2));
    illegal.push(...createSequences(sequenceLength, capitalRow2));
    illegal.push(...createSequences(sequenceLength, row3));
    illegal.push(...createSequences(sequenceLength, capitalRow3));
    illegal.push(...createSequences(sequenceLength, row4));
    illegal.push(...createSequences(sequenceLength, capitalRow4));
    //
    illegal.push(...createSequences(sequenceLength, reversedRow1));
    illegal.push(...createSequences(sequenceLength, reversedCapitalRow1));
    illegal.push(...createSequences(sequenceLength, reversedRow2));
    illegal.push(...createSequences(sequenceLength, reversedCapitalRow2));
    illegal.push(...createSequences(sequenceLength, reversedRow3));
    illegal.push(...createSequences(sequenceLength, reversedCapitalRow3));
    illegal.push(...createSequences(sequenceLength, reversedRow4));
    illegal.push(...createSequences(sequenceLength, reversedCapitalRow4));

    return illegal;
}
