#* 34. Find First and Last Position of Element in Sorted Array
nums = [5,7,7,8,8,10]; target = 8
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
#*
def search_range(nums, target):
    res=[]
    for i, num in enumerate(nums):
        if num == target:
            res.append(i)

    if len(res) == 0:
        return [-1, -1]
    else:
        return [res[0], res[-1]]


print(search_range(nums,target))
  




#     res=[]
#     nums.each_with_index do |n,i|
#         res << i if n == target
#     end
#     res.empty? ? [-1, -1] : [res.first, res.last]
# end
# p search_range(nums, target)


