// JAVASCRIPT
// 2428. Maximum Sum of an Hourglass
grid = [[6,2,1,3],[4,2,1,5],[9,2,8,7],[4,1,2,9]]
/**
 * @param {number[][]} grid
 * @return {number}
 */
//SOL
var maxSum = function(grid) {
  let max = -Infinity;
  for (let i = 0; i < grid.length - 2; i++) {
      for (let j = 0; j < grid[0].length - 2; j++) {
          let sum = grid[i][j] + grid[i][j+1] + grid[i][j+2] +
                    grid[i+1][j+1] +
                    grid[i+2][j] + grid[i+2][j+1] + grid[i+2][j+2];
          max = Math.max(max, sum);
      }
  }
  return max;
};
console.log(maxSum(grid));