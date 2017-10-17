// JS
// 2136. Earliest Possible Day of Full Bloom
plantTime = [1,4,3]; growTime = [2,3,1]
/**
 * @param {number[]} plantTime
 * @param {number[]} growTime
 * @return {number}
 */
var earliestFullBloom = function(plantTime, growTime) {
    let restDay = 0;
    let moreNecessaryDays = [];
    let combined = plantTime.map((p, i) => [p, growTime[i]]);
    combined.sort((a, b) => a[1] - b[1]);
    
    for (let [plantDay, growDay] of combined) {
        if (restDay < growDay) {
            moreNecessaryDays.push(growDay - restDay);
        }
        restDay += plantDay;
    }
    return plantTime.reduce((a, b) => a + b, 0) + Math.max(...moreNecessaryDays);
};
console.log(earliestFullBloom(plantTime, growTime))
