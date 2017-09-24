// 2553. Separate the Digits in an Array
nums = [13,25,83,77]
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var separateDigits = function(nums) {
  return nums.join('').split('')
};
console.log(separateDigits(nums))