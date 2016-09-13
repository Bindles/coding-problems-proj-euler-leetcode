#* 46. Permutations
nums = [1,2,3]
# @param {Integer[]} nums
# @return {Integer[][]}
#* MY SOL
def permute(nums)
    nums.permutation(nums.size).to_a
end
p permute(nums)

#* BACKTRACKING SOL
def permute(nums)
    result = []
    backtrack(nums, [], result)
    result
end

def backtrack(nums, array, result)
    return result.push(array) if nums.empty?

    nums.each do |n|
        backtrack(nums - [n], [*array, n], result)
    end
    array
end
p permute(nums)