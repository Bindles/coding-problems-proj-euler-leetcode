#* 2461. Maximum Sum of Distinct Subarrays With Length K
#nums = [1,5,4,2,9,9,9]; k = 3
#nums = [11,5,4,2,9,7,19,19]; k = 3
nums = [9,9,9,1,2,3];k=3
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
#* CANT RUN SOME GLITCH | WORKED IN JS/PY
def maximum_subarray_sum(nums, k)
  high=0

  (0..nums.size-k).each do |n|
    p subarray = nums[n...(n+k)]
    if subarray.uniq.size == subarray.size
      p high = [high, subarray.sum].max
    end 

  end
  return high
end
p maximum_subarray_sum(nums, k)

#* FAILS TESTCASE 80 
def maximum_subarray_sum(nums, k)
  freq = {}
  max_sum = sum = left = 0

  nums.each_with_index do |num, right|
    while freq[num] && left <= right
      sum -= nums[left]
      freq[nums[left]] -= 1
      left += 1
    end

    freq[num] = (freq[num] || 0) + 1
    sum += num

    if right - left + 1 == k
      max_sum = [max_sum, sum].max
      sum -= nums[left]
      freq[nums[left]] -= 1
      left += 1
    end
  end
  max_sum
end
p maximum_subarray_sum(nums, k)