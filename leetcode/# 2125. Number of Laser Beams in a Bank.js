//2125. Number of Laser Beams in a Bank
bank = ["011001","000000","010100","001000"]
/**
 * @param {string[]} bank
 * @return {number}
 */
var numberOfBeams = function(bank) {
    let result = 0, temp = 0;
    for (let i = 0; i < bank.length; i++) {
        let n = bank[i].split('').filter(x => x === '1').length; //ghetto js no count()
        if (n === 0) continue;
        result += temp * n;
        temp = n;
    }
    return result;
};
console.log(numberOfBeams(bank))