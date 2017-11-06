// JAVASCRIPT
// 2932. Maximum Strong Pair XOR I
nums = [1,2,3,4,5]

//SOL
impl Solution {
    pub fn maximum_strong_pair_xor(nums: Vec<i32>) -> i32 {
        let mut max_xor = 0;
        let n = nums.len();
        
        for i in 0..n {
            for j in i..n {
                let x = nums[i];
                let y = nums[j];
                if (x - y).abs() <= x.min(y) {
                    max_xor = max_xor.max(x ^ y);
                }
            }
        }
        
        max_xor
    }
}

fn main() {
    println!("{}", Solution::maximum_strong_pair_xor(vec![1, 2, 3, 4, 5]));  // => 7
    println!("{}", Solution::maximum_strong_pair_xor(vec![10, 100]));        // => 0
    println!("{}", Solution::maximum_strong_pair_xor(vec![5, 6, 25, 30]));   // => 7
}


       