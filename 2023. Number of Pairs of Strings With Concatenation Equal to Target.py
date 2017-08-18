#PYTHON
#* 2023. Number of Pairs of Strings With Concatenation Equal to Target
nums = ["777","7","77","77"]; target = "7777"
from typing import List
#* SOL | OTHERS DONT WORK LOL WHY WONT RUBY LOOP ELIM CHECK i!=j
class Solution:
    def numOfPairs(self, nums: List[str], target: str) -> int:
        return sum(1 for i in range(len(nums)) for j in range(len(nums)) if i!=j and nums[i]+nums[j]==target )

print(Solution().numOfPairs(nums,target))   
#*
def num_of_pairs(nums, target):
    return sum(1 for i in range(len(nums)) for j in range(i, len(nums)) if nums[i] + nums[j] == target)

print(num_of_pairs(nums, target))

#* 
def num_of_pairs(nums, target):
    return sum(1 for i in range(len(nums)) for j in range(i, len(nums)) if ''.join([nums[i], nums[j]]) == target)

print(num_of_pairs(nums, target))

