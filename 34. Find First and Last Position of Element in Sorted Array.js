// 34. Find First and Last Position of Element in Sorted Array
nums = [5,7,7,8,8,10]; target = 8
//
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var searchRange = function(nums, target) {
    let res=[]
    nums.forEach((num, i) => {
        if (num===target) res.push(i)
    })
    return res.length===0 ? [-1, -1] : [res[0], res.at(-1)]
};
console.log(searchRange(nums,target))

//* AWESOME NEW METHOD AT GIVES JS ARRAY[-1]
console.log(
    nums[0],
    nums[nums.length - 1],
    nums.at(-1)
)