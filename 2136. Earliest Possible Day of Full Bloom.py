# PYTHON
#* 2136. Earliest Possible Day of Full Bloom
plantTime = [1,4,3]; growTime = [2,3,1]
# @param {Integer[]} plantTime
# @param {Integer[]} growTime
# @return {Integer}
#*
def earliest_full_bloom(plantTime, growTime):
    rest_day = 0
    more_necessary_days = []
    for plant_day, grow_day in sorted(zip(plantTime, growTime), key=lambda x: x[1]):
        if rest_day < grow_day:
            more_necessary_days.append(grow_day - rest_day)
        rest_day += plant_day
    return sum(plantTime) + max(more_necessary_days)

# Test case
plantTime = [1, 4, 3]
growTime = [2, 3, 1]
print(earliest_full_bloom(plantTime, growTime))
