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

#* SIMPLE SOL
class Solution:
    def xorOperation(self, n: int, start: int) -> int:
        total = 0
        for i in range(n):
            total ^= start + 2 * i
        return total
    
print(Solution().xorOperation(n,start))



