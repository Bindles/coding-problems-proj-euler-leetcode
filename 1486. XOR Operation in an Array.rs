// 1486. XOR Operation in an Array
//n = 4; start = 3
fn xor_operation(n: i32, start: i32) -> i32 {
    (0..n).map(|index| start + 2 * index).fold(0, |acc, num| acc ^ num)
}