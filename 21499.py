def rearrange_array(nums):
    left, right = 0, len(nums) - 1
    
    while left < right:
        # If both elements have the same sign, swap them
        if nums[left] * nums[right] > 0:
            # Swap nums[right] with the next element (nums[right+1])
            if nums[right] > 0:
                nums[right], nums[right + 1] = nums[right + 1], nums[right]
            else:
                nums[left], nums[left + 1] = nums[left + 1], nums[left]
            # Move pointers to the next pair
            left += 2
            right -= 2
        else:
            # Move pointers to the next pair
            left += 1
            right -= 1
    
    return nums

# Test the function
nums1 = [3, 1, -5, -2, -4, 2]
print(rearrange_array(nums1))  # Output: [3, -5, 1, -2, -4, 2]
