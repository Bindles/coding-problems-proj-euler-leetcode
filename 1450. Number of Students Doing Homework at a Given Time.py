#* 1450. Number of Students Doing Homework at a Given Time
startTime = [1,2,3]; endTime = [3,2,7];queryTime = 4
from typing import List
#*
class Solution:
    def busyStudent(self, startTime: List[int], endTime: List[int], queryTime: int) -> int:
        times = list(zip(startTime, endTime))
        count = sum(1 for a, b in times if queryTime in range(a, b + 1))
        print(count)

print(Solution().busyStudent(startTime,endTime,queryTime))

#*
class Solution:
    def busyStudent(self, startTime: List[int], endTime: List[int], queryTime: int) -> int:
        count=0
        times = list(zip(startTime, endTime))
        print(times)
        
        for a,b in times:
            print(range(a,b))
            if queryTime in range(a, b):
                count +=1 

        #res = [1 for a,b in times if range(a,b).contain(7)]
        #res = [1 for a,b in times] #works
            
        res= sum(1 for a,b in times if queryTime in range(a,b+1))

        print(res)
        print(count)

print(Solution().busyStudent(startTime,endTime,queryTime))


#* MISC
startTime = [1, 2, 3]
endTime = [4, 5, 6]

for start, end in zip(startTime, endTime):
    print(f"Start: {start}, End: {end}")


# Define the startTime and endTime lists
startTime = [1, 2, 3]
endTime = [4, 5, 6]

# Use zip to combine the lists element-wise
times = list(zip(startTime, endTime))

# Print the result
print(times)