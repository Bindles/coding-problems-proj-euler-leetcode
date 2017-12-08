#* 1450. Number of Students Doing Homework at a Given Time
start_time = [1,2,3]; end_time = [3,2,7]; query_time = 4
# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
#*
def busy_student(start_time, end_time, query_time)
    start_time.zip(end_time).map{|a,b| (a..b).to_a}.count{|pair| pair.include?(query_time)}
end
p busy_student(start_time, end_time, query_time) 

#*
def busy_student(start_time, end_time, query_time)
    times = start_time.zip(end_time)
    times.map{|a,b| (a..b).to_a}.count{|pair| pair.include?(query_time)}
end
p busy_student(start_time, end_time, query_time) 

