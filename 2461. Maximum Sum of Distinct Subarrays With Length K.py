#* 2461. Maximum Sum of Distinct Subarrays With Length K
#nums = [1,5,4,2,9,9,9]; k = 3
#nums = [11,5,4,2,9,7,19,19]; k = 3
nums = [9,9,9,1,2,3];k=3
from typing import List
class Solution:
    def maximumSubarraySum(self, nums: List[int], k: int) -> int:
        freq = {}
        max_sum = 0
        sum_val = 0
        left = 0

        for right in range(len(nums)):
            while freq.get(nums[right], 0) and left <= right:
                sum_val -= nums[left]
                freq[nums[left]] -= 1
                left += 1

            freq[nums[right]] = freq.get(nums[right], 0) + 1
            sum_val += nums[right]

            if right - left + 1 == k:
                max_sum = max(max_sum, sum_val)
                sum_val -= nums[left]
                freq[nums[left]] -= 1
                left += 1

        return max_sum  
    
print(Solution().maximumSubarraySum(nums,k))