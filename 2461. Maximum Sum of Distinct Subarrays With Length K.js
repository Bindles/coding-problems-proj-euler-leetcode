// 2461. Maximum Sum of Distinct Subarrays With Length K
let nums = [9, 9, 9, 1, 2, 3];
let k = 3;

function maximumSubarraySum(nums, k) {
  let high = 0;
  let n = nums.length;

  for (let i = 0; i <= n - k; i++) {
    let subarray = nums.slice(i, i + k);
    let set = new Set(subarray);
    if (set.size === subarray.length) {
      high = Math.max(high, subarray.reduce((a, b) => a + b, 0));
    }
  }
  
  return high;
}

console.log(maximumSubarraySum(nums, k));


/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maximumSubarraySum = function(nums, k) {
  let freq = {}, maxSum = 0, sum = 0, left = 0;
  for(let right = 0; right < nums.length; right++){
      while(freq[nums[right]] && left <= right){
          sum -= nums[left];
          freq[nums[left]]--;
          left++;
      }
      freq[nums[right]] = (freq[nums[right]] || 0) + 1;
      sum += nums[right];
      if(right - left + 1 == k) {
          maxSum = Math.max(maxSum, sum);
          sum -= nums[left];
          freq[nums[left]]--;
          left++;
      }
  }
  return maxSum;    
};
console.log(maximumSubarraySum(nums, k));

var maximumSubarraySum = function(nums, k) {
  if (nums.length < k) return 0;
  
  let maxSum = 0;
  let currentSum = 0;
  const slidingWindow = {};
  let distinct = 0;

  for (let i = 0; i < nums.length; i++) {
     const currentNum = nums[i];
     if ( slidingWindow[currentNum] ) {
        slidingWindow[currentNum] += 1;  
     } else {
       slidingWindow[currentNum] = 1;
       distinct++;
     }
     currentSum += currentNum;
     if ( i >= k ) {
       const prevNum = nums[i-k]
       if (slidingWindow[prevNum] === 1) {
         slidingWindow[prevNum] = undefined;
         distinct--;
       } else {
         slidingWindow[prevNum] -= 1;
       }
      currentSum -= prevNum;
     }       
     if (distinct === k && currentSum > maxSum) {
       maxSum = currentSum;
     }
  }
  return maxSum;
};
console.log(maximumSubarraySum(nums, k));
