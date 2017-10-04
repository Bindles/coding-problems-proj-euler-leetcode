#* 2317. Maximum XOR After Operations
nums = [3,2,4,6]
# @param {Integer[]} nums
# @return {Integer}
#*
def maximum_xor(nums)
  nums.reduce(0){|acc,num| acc | num} 
end
p maximum_xor(nums)

#*
def maximum_xor(nums)
  acc = 0
  nums.each do |num|
    acc |= num
  end
  acc
end
p maximum_xor(nums)