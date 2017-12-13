// 1450. Number of Students Doing Homework at a Given Time
startTime = [1,2,3]; endTime = [3,2,7];queryTime = 4
/**
 * @param {number[]} startTime
 * @param {number[]} endTime
 * @param {number} queryTime
 * @return {number}
 */
// SOL
var busyStudent = function(startTime, endTime, queryTime) {
    // Zip startTime and endTime into pairs
    const times = startTime.map((start, index) => [start, endTime[index]]);

    // Create ranges and count how many include queryTime
    const count = times
        .map(([a, b]) => Array.from({ length: b - a + 1 }, (_, i) => a + i))
        .filter(range => range.includes(queryTime))
        .length;

    return count;
}
console.log(busyStudent(startTime, endTime, queryTime))

// SOL
var busyStudent = function(startTime, endTime, queryTime) {
    const times = startTime.map((start, index) => [start, endTime[index]]);
    const count = times.filter(([a, b]) => queryTime >= a && queryTime <= b).length;

    return count;
}
console.log(busyStudent(startTime, endTime, queryTime))


