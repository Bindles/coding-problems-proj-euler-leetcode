#* 2932. Maximum Strong Pair XOR I
nums = [1,2,3,4,5]
# @param {Integer[]} nums
# @return {Integer}
#*
def maximum_strong_pair_xor(nums)
    result = 0
    nums.each_index do |i|
        (i + 1...nums.size).each do |j|
            result = [result, nums[i] ^ nums[j]].max
        end
    end
    result
end
p maximum_strong_pair_xor(nums)  # => 7


#*
def maximum_strong_pair_xor(nums)
    res=[]
    nums.each_index do |i|
        (i+1...nums.size).each do |j|
            res << [nums[i], nums[j]] if (nums[i] ^ nums[j]) <= [nums[i], nums[j]].min
        end
    end
    res.size
end
p maximum_strong_pair_xor(nums)


