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

//. . . . . .
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

// BSEARCH SOL 2
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


//BSEARCH SOL 1 | RUST | DOESNT WORK | COMING BACK DW
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

//REDO | BSEARCH SOL 1.1 | BETTER | CLOSEST TO RUBY | STILL 1MS :(
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let f = |x: &i32| (*x < nums[0], *x);
      match nums.binary_search_by_key(&f(&target), f) {
          Ok(i) => i as i32,
          Err(_) => -1,
      }
  }
}


//SOL 3 BSEARCH PARTITION_POINT
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let split = nums.partition_point(|&x| x >= nums[0]);
      if target < nums[0] {
          if let Ok(i) = nums[split..].binary_search(&target) {
              (i + split) as i32
          } else {
              -1
          }
      } else {
          if let Ok(i) = nums[..split].binary_search(&target) {
              i as i32
          } else {
              -1
          }
      }
  }
}

//OTHER STYLES
//RECURSIVE | FAST
impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      fn bin_search_target_logn(N: &[i32], target:i32) -> i32{
          let length = N.len();
          if length <= 0 {return -1}
          let mid = if length == 1 {0} else {length / 2};
          if N[mid] == target { return mid as i32 }
          if N[0] < N[mid] {
              if target <= N[mid] && target >= N[0] { return bin_search_target_logn(&N[0..mid], target)}
              else { 
                  let m = bin_search_target_logn(&N[mid+1..length], target); 
                  if m > -1 {return m + mid as i32 + 1} 
                  else {return -1}
              }
          }
          else{
              if target <= N[length -1] && target >= N[mid] {
                  let m = bin_search_target_logn(&N[mid+1..length], target); 
                  if m > -1 {return m + mid as i32 + 1} 
                  else {return -1}
              } 
              else { return bin_search_target_logn(&N[0..mid], target)}
          }
          -1
      }
      bin_search_target_logn(&nums, target)
  }
}


//WORKING. . . . .
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
