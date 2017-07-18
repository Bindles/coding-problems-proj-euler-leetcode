#* 2023. Number of Pairs of Strings With Concatenation Equal to Target
nums = ["777","7","77","77"]; target = "7777"
# @param {String[]} nums
# @param {String} target
# @return {Integer}
#*
def num_of_pairs(nums, target)
    count=0
    nums.each_index do |i|
        (i...nums.size).each do |j|
            count +=1 if [nums[i], nums[j]].join == target
        end
    end
    count
end
p num_of_pairs(nums, target)

#* CONCISE
def num_of_pairs(nums, target)
    nums.each_index.sum do |i|
        (i...nums.size).count do |j|
            [nums[i], nums[j]].join == target
        end
    end
end