#* 46. Permutations
nums = [1,2,3]
# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    nums.permutation(nums.size).to_a
end
p permute(nums)