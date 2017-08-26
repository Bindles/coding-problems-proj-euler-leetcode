#* 2149. Rearrange Array Elements by Sign
nums = [3,1,-2,-5,2,-4]
# [3,-2,1,-5,2,-4]
# @param {Integer[]} nums
# @return {Integer[]}
#* SOL
def rearrange_array(nums)
  positives, negatives = nums.partition(&:positive?)
  positives.zip(negatives).flatten
end
p  rearrange_array(nums)

#* BETTER
def rearrange_array(nums)
  p nums.partition(&:positive?).transpose.flatten
end
p  rearrange_array(nums)

#* DIFF WAY
def rearrange_array(nums)
  p results = Array.new(nums.size, 0)

  index_even, index_odd = 0, 1
  nums.each do |num|
    if num > 0
      results[index_even] = num
      index_even += 2
    else
      results[index_odd] = num
      index_odd += 2
    end
  end
  results
end
p  rearrange_array(nums)

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