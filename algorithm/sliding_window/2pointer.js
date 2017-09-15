function two_sum_sorted_array(arr, target) {
    var left = 0;
    let right = arr.length - 1;
    
    while (left < right) {
        current_sum = arr[left] + arr[right]
        if (current_sum == target) {
            return (left, right)
        }
        else if (current_sum < target) left += 1;
        else {
            right -= 1;
        }
    }
    
    return None
}

var arr = [2, 7, 11, 15]
var target = 9
console.log((two_sum_sorted_array(arr, target))) 

function moveZeros(nums) {
    let i = 0, j = 0; // Declare and initialize two pointers on one line

    // Move non-zero elements to the front of the array
    while (i < nums.length) {
        if (nums[i] !== 0) {
            nums[j] = nums[i];
            j++;
        }
        i++;
    }

    // Fill the remaining positions with zeros
    while (j < nums.length) {
        nums[j] = 0;
        j++;
    }
}

// Test case
let nums = [0, 1, 0, 3, 12];
moveZeros(nums);
console.log(nums); // Output: [1, 3, 12, 0, 0]

