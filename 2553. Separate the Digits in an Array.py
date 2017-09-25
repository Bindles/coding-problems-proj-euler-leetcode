#* 2553. Separate the Digits in an Array
nums = [13,25,83,77]
from typing import List
#*
class Solution:
  def separateDigits(self, nums: List[int]) -> List[int]:
    return list(map(int,list(''.join(map(str,nums)))))
  
print(Solution().separateDigits(nums))

#* WORKING . . .
#* NONE OF THESE QUITE WORK
def separate_digits(nums):
  return ''.join(map(str,nums))

print(separate_digits(nums))

def separate_digits(nums):
  strNums = str(nums)
  jstring = ''.join(strNums)
  return jstring

print(separate_digits(nums))


nums = [13, 25, 83, 77]
joined_string = ''.join(map(str, nums))
print(joined_string)  # Output: "13258377"


nums = ["13", "25", "83"]
joined_string = ''.join(nums)
print(joined_string)  # Output: "132583"

print(separate_digits(nums))
strNums = str(nums)
js = ''.join(strNums)
print(js)


class Solution:
    def separateDigits(self, nums: List[int]) -> List[int]:

                                            # Example: nums = [13,25,83,77]
                                            # –––––––––––––––––––––––––––––––––––
        strngLst = map(str,nums)            # 1)  strngLst = ['13', '25', '83', '77']    
      
        strng = ''.join(map(str,nums) )     # 2)     strng = "13258377"
      
        digitLst = list(strng)              # 3)  digitLst = ['1','3','2','5','8','3','7','7']
      
        intLst = list(map(int,digitLst))    # 4)    intLst = [1,3,2,5,8,3,7,7]

        return list(intLst)                 #    return [1,3,2,5,8,3,7,7]