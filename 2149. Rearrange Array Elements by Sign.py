#PYTHON
#* 2149. Rearrange Array Elements by Sign
nums = [3,1,-2,-5,2,-4]
# ANSWER => [3,-2,1,-5,2,-4]
from typing import List
class Solution:
    def rearrangeArray(self, nums: List[int]) -> List[int]:
        positives = [num for num in nums if num > 0]
        negatives = [num for num in nums if num <= 0]
        return [num for group in zip(positives, negatives) for num in group]
    
print(Solution().rearrangeArray(nums))