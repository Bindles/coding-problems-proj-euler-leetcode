// 2023. Number of Pairs of Strings With Concatenation Equal to Target
nums = ["777","7","77","77"]; target = "7777"
/**
 * @param {string[]} nums
 * @param {string} target
 * @return {number}
 */
//SOL 3 | STRUGGLED SO HARD AFTER COMPLETING IN RUST/RUBY/PY EZ <3 JS
var numOfPairs = function(nums, target) {
    let count = 0;
    for(var i=0;i<nums.length;i++){
        for(var j=0;j<nums.length;j++){
            if(i!=j && nums[i]+nums[j] == target) count++
        }
    }
    return count
};

//WORKING . . . . 
//SOL 2
var numOfPairs = function(nums, target) {
    return nums.reduce((count, _, i) =>
        count + nums.slice(i).filter(num => [nums[i], num].join('') === target).length
    , 0);
};
//SOL 1
var numOfPairs = function(nums, target) {
    return nums.reduce((count, _, i) =>
        count += [...Array(nums.length - i)].filter((_, j) => nums[i] + nums[j + i] === target).length
    , 0);
};
// DONT WORK
var numOfPairs = function(nums, target) {
    return nums.reduce((count, _, i) =>
      count + [...Array(nums.length - i - 1).keys()].filter(j => nums[i] + nums[j + i + 1] === target).length
    , 0);
  };
  //(END)[WORKING . . .]


 