// 2317. Maximum XOR After Operations
nums = [3,2,4,6]
/**
 * @param {number[]} nums
 * @return {number}
 */
var maximumXOR = function(nums) {
  return nums.reduce((acc, num) => acc | num, 0);     
};
console.log(maximumXOR(nums))