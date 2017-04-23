#* 33. Search in Rotated Sorted Array
nums = [4,5,6,7,0,1,2]; target = 0
from typing import List
#*
def search(nums, target):
    left, right = 0, len(nums) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if nums[mid] == target:
            return mid
        
        # Check if left half is sorted
        if nums[left] <= nums[mid]:
            #Check if target is in left half
            if nums[left] <= target < nums[mid]:
                right = mid - 1
            else:
                left = mid + 1
        # Check if right half is sorted
        else:
            # Check if target is in right half
            if nums[mid] < target <= nums[right]:
                left = mid + 1
            else:
                right = mid - 1
                
    return -1

print(search(nums, target))  # Output: 4

#*
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        sorted_nums = sorted(nums)
        
        def custom_compare(target, n):
            if target == n:
                return 0
            elif target < n:
                return -1
            else:
                return 1
        
        result = None
        left, right = 0, len(sorted_nums) - 1
        
        while left <= right:
            mid = (left + right) // 2
            comparison = custom_compare(target, sorted_nums[mid])
            if comparison == 0:
                result = sorted_nums[mid]
                break
            elif comparison < 0:
                right = mid - 1
            else:
                left = mid + 1
        
        return nums.index(result) if result is not None else -1

print(Solution().search(nums, target))
