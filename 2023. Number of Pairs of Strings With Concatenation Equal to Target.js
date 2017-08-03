// 2023. Number of Pairs of Strings With Concatenation Equal to Target
nums = ["777","7","77","77"]; target = "7777"
//DOESNT WORK
/**
 * @param {string[]} nums
 * @param {string} target
 * @return {number}
 */

/**
 * @param {string[]} nums
 * @param {string} target
 * @return {number}
 */
// DONT WORK
var numOfPairs = function(nums, target) {
    return nums.reduce((count, _, i) =>
      count + [...Array(nums.length - i - 1).keys()].filter(j => nums[i] + nums[j + i + 1] === target).length
    , 0);
  };


  

  //work