// 33. Search in Rotated Sorted Array
//nums = [4,5,6,7,0,1,2]; target = 0
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let mut left = 0;
      let mut right = nums.len() as i32 - 1;

      while left <= right {
          let mid = (left + right) / 2;
          
          if nums[mid as usize] == target {
              return mid;
          }

          if nums[left as usize] <= nums[mid as usize] {
              if nums[left as usize] <= target && target < nums[mid as usize] {
                  right = mid - 1;
              } else {
                  left = mid + 1;
              }
          } else {
              if nums[mid as usize] < target && target <= nums[right as usize] {
                  left = mid + 1;
              } else {
                  right = mid - 1;
              }
          }
      }
      -1
  }
}

//RUBY .BSEARCH <=> RUST .BINARY_SEARCH
//BINARY SEARCH
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      // Perform binary search using the binary_search method
      if let Ok(index) = nums.binary_search(&target) {
          return index as i32;
      }
      -1
  }
}
