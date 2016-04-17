// 7. Reverse Integer
x = 123
/**
 * @param {number} x
 * @return {number}
 */
var reverse = function(x) {
  let n = parseInt(x.toString().split('').reverse().join(''));
  if (n > 2147483647) {
      return 0;
  }
  return x < 0 ? -n : n;
}
console.log(reverse(x)); 
