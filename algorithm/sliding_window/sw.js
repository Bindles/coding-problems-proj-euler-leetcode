function maxSum(arr, n, k) {
  let max_sum = 0;
  
  // Loop from i to k
  for (let i = 0; i < k; i++) {
      max_sum += arr[i];
  }
  
  let window_sum = max_sum;
  for (let i = k; i < n; i++) {
      window_sum = window_sum - arr[i - k] + arr[i];
      max_sum = Math.max(max_sum, window_sum);
  }
  return max_sum;
}

// Driver code
let arr = [1, 4, 2, 10, 2, 3, 1, 0, 20];
let k = 4;
let n = arr.length;
console.log(maxSum(arr, n, k));