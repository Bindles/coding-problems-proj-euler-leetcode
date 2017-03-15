#* 34. Find First and Last Position of Element in Sorted Array
nums = [5,7,7,8,8,10]; target = 8
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
#*
def search_range(nums, target)
    res=[]
    nums.each_with_index do |n,i|
        res << i if n == target
    end
    res.empty? ? [-1, -1] : [res.first, res.last]
end
p search_range(nums, target)

#*
def search_range(nums, target)
    res = nums.each_with_index.filter_map{|n,i| i if n == target}
    res.empty? ? [-1, -1] : [res.first, res.last]
end
p search_range(nums, target)