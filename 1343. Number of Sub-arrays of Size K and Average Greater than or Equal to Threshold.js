// JAVASCRIPT
// 1343. Number of Sub-arrays of Size K and Average Greater than or Equal to Threshold
arr = [2,2,2,2,5,5,5,8]; k = 3; threshold = 4

//SOL
function numOfSubarrays(arr, k, threshold) {
    let count = 0;
    for (let i = 0; i <= arr.length - k; i++) {
        let sum = 0;
        for (let j = i; j < i + k; j++) {
            sum += arr[j];
        }
        if (sum / k >= threshold) {
            count++;
        }
    }
    return count;
}
console.log(numOfSubarrays([2, 1, 3, 4, 1], 3, 2));


