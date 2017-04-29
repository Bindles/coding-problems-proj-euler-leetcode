// 33. Search in Rotated Sorted Array
var nums = [4,5,6,7,0,1,2]; target = 0
var search = function(nums, target) {
  let left = 0;
  let right = nums.length - 1;

  while (left <= right) {
      let mid = Math.floor((left + right) / 2);
      
      if (nums[mid] === target) {
          return mid;
      }

      // Check if the left half is sorted
      if (nums[left] <= nums[mid]) {
          // Check if the target is in the left half
          if (nums[left] <= target && target < nums[mid]) {
              right = mid - 1;
          } else {
              left = mid + 1;
          }
      // Check if the right half is sorted
      } else {
          // Check if the target is in the right half
          if (nums[mid] < target && target <= nums[right]) {
              left = mid + 1;
          } else {
              right = mid - 1;
          }
      }
  }
  return -1;
};
console.log(search(nums, target));  // Output: 4
