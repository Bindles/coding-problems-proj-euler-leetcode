# PYTHON
#* 2136. Earliest Possible Day of Full Bloom
plant_time = [1,4,3]; grow_time = [2,3,1]
# @param {Integer[]} plant_time
# @param {Integer[]} grow_time
# @return {Integer}
#*
def earliest_full_bloom(plant_time, grow_time):
    rest_day = 0
    more_necessary_days = []
    for plant_day, grow_day in sorted(zip(plant_time, grow_time), key=lambda x: x[1]):
        if rest_day < grow_day:
            more_necessary_days.append(grow_day - rest_day)
        rest_day += plant_day
    return sum(plant_time) + max(more_necessary_days)

# Test case
plant_time = [1, 4, 3]
grow_time = [2, 3, 1]
print(earliest_full_bloom(plant_time, grow_time))
