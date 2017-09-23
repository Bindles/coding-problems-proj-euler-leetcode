#* 2553. Separate the Digits in an Array
nums = [13,25,83,77]
# @param {Integer[]} nums
# @return {Integer[]}
def separate_digits(nums)
  p nums.join.split('').map(&:to_i)
    
end
p separate_digits(nums)