#* 2149. Rearrange Array Elements by Sign
nums = [3,1,-2,-5,2,-4]
# [3,-2,1,-5,2,-4]
# @param {Integer[]} nums
# @return {Integer[]}
#*
def rearrange_array(nums)
  positives, negatives = nums.partition(&:positive?)
  positives.zip(negatives).flatten
end

#*WORKING . . . .
#* DOES NOT WORK
def rearrange_array(nums)
  n = nums.size
  left = 0 
  right = n - 1
  #nums.each_index do |left|
  while left < right
    p nums[left]
    p nums[right]
    if nums[left] * nums[right] > 0
      nums[left], nums[right] = nums[right], nums[left]
      left += 1
      right -= 1
    else
      left+=1 and right -=1
    end
  end
  nums
end
p rearrange_array(nums)