#* 1486. XOR Operation in an Array
n = 4; start = 3


#*
def xorOperation(n, start):
    total=0
    arr = [0] * n
    res = [start + num + 2 * i for i, num in enumerate(arr)]
    for num in res:
        total ^= num

    return total
print(xorOperation(n,start))


