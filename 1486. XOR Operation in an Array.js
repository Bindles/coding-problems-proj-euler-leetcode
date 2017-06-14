// 1486. XOR Operation in an Array
n = 4; start = 3
// WRITTEN OUT | (BEFORE COMPLETING IN PY,JS,RUST)
function xorOperation(n, start) {
    total=0
    let arr = new Array(n).fill(0)
    let res = arr.map((num, index) => start + num + 2 * index)
    console.log(res)
    for (num of res) {
        total^=num
    }
    return total
}
console.log(xorOperation(n, start))



