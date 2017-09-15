def two_sum_sorted_array(arr, target):
    left, right = 0, len(arr) - 1
    
    while left < right:
        current_sum = arr[left] + arr[right]
        if current_sum == target:
            return (left, right)
        elif current_sum < target:
            left += 1
        else:
            right -= 1
    
    return None

# Test case
arr = [2, 7, 11, 15]
target = 9
print(two_sum_sorted_array(arr, target))  # Output: (0, 1)

def move_zeros(nums):
    j = 0  # Pointer for the position of the next non-zero element
    
    for i in range(len(nums)):
        if nums[i] != 0:
            nums[j] = nums[i]
            j += 1
    
    for i in range(j, len(nums)):
        nums[i] = 0

# Test case
nums = [0, 1, 0, 3, 12]
move_zeros(nums)
print(nums)  # Output: [1, 3, 12, 0, 0]

