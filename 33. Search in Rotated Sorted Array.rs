// 33. Search in Rotated Sorted Array
//nums = [4,5,6,7,0,1,2]; target = 0
//SOL 1
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

//SOL 2 WORKS
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let mut nums_with_indices: Vec<(i32, usize)> = nums.iter().enumerate().map(|(i, &val)| (val, i)).collect();
      nums_with_indices.sort_unstable_by_key(|&(val, _)| val);

      let result = nums_with_indices.binary_search_by_key(&target, |&(val, _)| val);

      match result {
          Ok(index) => nums_with_indices[index].1 as i32,
          Err(_) => -1,
      }
  }
}


//BSEARCH SOL RUST | DOESNT WORK | COMING BACK DW
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let mut nums = nums;
      nums.sort();
      
      if let Ok(index) = nums.binary_search(&target) {
          index as i32
      } else {
          -1
      }
  }
}



//WORKING. . . 
//FAILS

//FAIL 2
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let mut nums = nums;
      nums.sort();

      if nums.is_empty() {
          return -1;
      }

      if let Ok(index) = nums.binary_search(&target) {
          index as i32
      } else {
          -1
      }
  }
}
