// 2149. Rearrange Array Elements by Sign
nums = [3,1,-2,-5,2,-4]
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var rearrangeArray = function(nums) {
  let positives = nums.filter(num => num > 0);
  let negatives = nums.filter(num => num <= 0);
  return [].concat(...positives.map((val, i) => [val, negatives[i]]));
};
console.log(rearrangeArray(nums))