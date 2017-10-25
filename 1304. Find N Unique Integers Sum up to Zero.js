// 1304. Find N Unique Integers Sum up to Zero
n = 5
function sumZero(n) {
    let result = [];
    if (n % 2 !== 0) {
        result.push(0);
    }
    for (let i = 1; i <= Math.floor(n / 2); i++) {
        result.push(i, -i);
    }
    return result;
}
console.log(sumZero(n));

