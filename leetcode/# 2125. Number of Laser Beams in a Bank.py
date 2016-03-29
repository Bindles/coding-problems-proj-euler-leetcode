#PYTHON
#* 2125. Number of Laser Beams in a Bank
bank = ["011001","000000","010100","001000"]
# @param {String[]} bank
# @return {Integer}
class Solution:
    def numberOfBeams(self, bank):
        result, temp = 0, 0
        for s in bank:
            n = s.count('1')
            if n == 0:
                continue
            result += temp * n
            temp = n
        return result
    
print(Solution().numberOfBeams(bank))

