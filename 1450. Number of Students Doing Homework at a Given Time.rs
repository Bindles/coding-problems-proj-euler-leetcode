// 1450. Number of Students Doing Homework at a Given Time
// startTime = [1,2,3]; endTime = [3,2,7];queryTime = 4
// SOL
impl Solution {
    pub fn busy_student(start_time: Vec<i32>, end_time: Vec<i32>, query_time: i32) -> i32 {
        let mut count = 0;
        
        for (start, end) in start_time.iter().zip(end_time.iter()) {
            if query_time >= *start && query_time <= *end {
                count += 1;
            }
        }
        
        count
    }
}
