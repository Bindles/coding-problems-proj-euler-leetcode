// 3028. Ant on the Boundary
// nums = [2,3,-5]

impl Solution {
    pub fn return_to_boundary_count(nums: Vec<i32>) -> i32 {
        let (mut total, mut boundary_hits) = (0, 0);

        for &num in nums.iter() {
            total += num;
            if total == 0 {
                boundary_hits += 1;
            }
        }

        boundary_hits
    }
}
