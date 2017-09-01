// 2200. Find All K-Distant Indices in an Array
nums = [3,4,9,1,3,9,5]; key = 9; k = 1
/**
 * @param {number[]} nums
 * @param {number} key
 * @param {number} k
 * @return {number[]}
 */
var findKDistantIndices = function(nums, key, k) {
    let res=[]
    for (let i=0; i<nums.length; i++){
      for (let j=0; j<nums.length; j++) {
        if (nums[j]==key && Math.abs(i-j)<=k) {
          res.push(nums.indexOf(i))
          break
        }
      }
    }
    return res
};
console.log(findKDistantIndices(nums,key,k))
// def find_k_distant_indices(nums, key, k)
//     res = []
//     nums.each_index do |i|
//       nums.each_index do |j|
//         if nums[j] == key && (i - j).abs <= k
//           res << i
//           break
//         end
//       end
//     end
//     res.uniq.sort
// end
// p find_k_distant_indices(nums, key, k)

// #*
// def find_k_distant_indices(nums, key, k)
//     res=[]
//     nums.each_index do |i|
//         (i...nums.size).each do |j|
//             if nums[j] == key and (i-j).abs <= k
//                 res << i
//                 #break
//             end
//         end
//     end
//     res
//     #p 'yes if nums[j] == key and (i-j).abs <= k
// end
// p find_k_distant_indices(nums, key, k)