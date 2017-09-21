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
  nums.partition(&:positive?).transpose.flatten
end
p  rearrange_array(nums)

#* DIFF WAY
def rearrange_array(nums)
  result = Array.new(nums.size, 0)

  index_even, index_odd = 0, 1
  nums.each do |num|
    if num > 0
      result[index_even] = num
      index_even += 2
    else
      result[index_odd] = num
      index_odd += 2
    end
  end
  result
end
p  rearrange_array(nums)

#* HARDER WAY TO EMPLOY 2 POINTERS
def rearrange_array(nums)
  # Initialize left and right pointers to track positive and negative elements
  l = r = 0
  # Initialize an empty array to store the rearranged elements
  res = []
  # Initialize an index to track the current position in the original array
  i = 0
  
  # Iterate through the original array
  while i < nums.size
    # If the index is even
    if i.even?
      # Move the right pointer until finding the next positive number
      while r < nums.size && nums[r] < 0
        r += 1
      end
      # Append the positive number to the result array
      res << nums[r]
      # Move the right pointer to the next position
      r += 1
    else # If the index is odd
      # Move the left pointer until finding the next negative number
      while l < nums.size && nums[l] > 0
        l += 1
      end
      # Append the negative number to the result array
      res << nums[l]
      # Move the left pointer to the next position
      l += 1
    end
    # Move to the next index
    i += 1
  end
  # Return the rearranged array
  res
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

#*MISC
p (-2 * 3)
