# PYTHON 
#* 1304. Find N Unique Integers Sum up to Zero
n = 5
def sum_zero(n):
    result = []
    if n % 2 != 0:
        result.append(0)
    for i in range(1, n // 2 + 1):
        result.append(i)
        result.append(-i)
    return result

# Test case
n = 5
print(sum_zero(n))
