#* 33. Search in Rotated Sorted Array
nums = [4,5,6,7,0,1,2]; target = 0
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
#*
def search(nums, target)
  spaceship_operator_head_basher = ->(target, n) do
    return 0 if target == n
    return -1 if target < n
    return 1 if target > n
  end
  result = nums.sort.bsearch { |n| spaceship_operator_head_basher[target, n] }
  result.nil? ? -1 : nums.index(result)
end
p search(nums, target)