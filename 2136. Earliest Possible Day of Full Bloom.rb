#* 2136. Earliest Possible Day of Full Bloom
plant_time = [1,4,3]; grow_time = [2,3,1]
# @param {Integer[]} plant_time
# @param {Integer[]} grow_time
# @return {Integer}
#*
def earliest_full_bloom(plant_time, grow_time)
  rest_day, more_necessary_days = 0, []
  plant_time.zip(grow_time).sort_by(&:last).each do |plant_day, grow_day|
    more_necessary_days << (grow_day - rest_day) if  rest_day < grow_day
    rest_day += plant_day
  end
  plant_time.sum + more_necessary_days.max
end
p earliest_full_bloom(plant_time, grow_time)

#*
def earliest_full_bloom(plant_time, grow_time)
  grow_time.zip(plant_time).sort_by {-_1[0]}.reduce([0,0]) { |(res, cur), (grow, plant)| [ [res, cur + plant + grow].max, cur + plant ] }[0]
end
p earliest_full_bloom(plant_time, grow_time)

#*
def earliest_full_bloom(plant_time, grow_time)
  plant_time.zip(grow_time).sort {|a, b| b.last <=> a.last }.inject([0, 0]) {|(tcur, tend), (x, g)|
      [tcur + x, [tend, tcur + x + g].max]
  }.last
end
p earliest_full_bloom(plant_time, grow_time)

