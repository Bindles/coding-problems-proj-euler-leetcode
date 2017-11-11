# PYTHON
#* 1343. Number of Sub-arrays of Size K and Average Greater than or Equal to Threshold
arr = [2,2,2,2,5,5,5,8]; k = 3; threshold = 4
#*
def num_of_subarrays(arr, k, threshold):
    count = 0
    for i in range(len(arr) - k + 1):
        if sum(arr[i:i + k]) / k >= threshold:
            count += 1
    return count


print(num_of_subarrays([2, 1, 3, 4, 1], 3, 2))  

