// 2724. Sort By
arr = [5, 4, 1, 2, 3]; fn = (x) => x
/**
 * @param {Array} arr
 * @param {Function} fn
 * @return {Array}
 */
var sortBy = function(arr, fn) {
    return arr.sort((a, b) => fn(a) - fn(b));
};