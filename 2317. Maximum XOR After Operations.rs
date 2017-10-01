// PYTHON
// 2317. Maximum XOR After Operations
//nums = [3,2,4,6]

//SOL
impl Solution {
    pub fn maximum_xor(nums: Vec<i32>) -> i32 {
        nums.iter().fold(0, |acc, &num| acc | num)
    }
}

// Test case
fn main() {
    let nums = vec![1, 2, 3, 4];
    let result = Solution::maximum_xor(nums);
    println!("{}", result);  // Output: 7
}

