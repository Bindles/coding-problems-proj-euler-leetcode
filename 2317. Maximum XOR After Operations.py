# PYTHON
#* 2317. Maximum XOR After Operations
from functools import reduce
from operator import ior
nums = [3,2,4,6]
from typing import List
class Solution:
    def maximumXOR(self, nums: List[int]) -> int:
        return reduce(ior, nums)  

print(Solution().maximumXOR(nums))
