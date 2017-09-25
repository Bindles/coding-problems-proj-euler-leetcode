// 1486. XOR Operation in an Array
n = 4; start = 3
// SOL 1 | ALIKE RUBY SOL
function xorOperation(n, start) {
    total=0
    let arr = new Int32Array(n)
    //let arr = new Array(n).fill(0)
    let res = arr.map((num, index) => start + num + 2 * index)
    console.log(res)
    for (num of res) {
        total^=num
    }
    return total
}
console.log(xorOperation(n, start))

//SIMPLE SOL
function xorOperation(n, start) {
    let total = 0;
    for (let i = 0; i < n; i++) {
        total ^= start + 2 * i;
    }
    return total;
};
console.log(xorOperation(n, start))




