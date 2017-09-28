// 2149. Rearrange Array Elements by Sign
nums = [3,1,-2,-5,2,-4]
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var rearrangeArray = function(nums) {
  let positives = nums.filter(num => num > 0);
  let negatives = nums.filter(num => num <= 0);
  return [].concat(...positives.map((val, i) => [val, negatives[i]]));
};
console.log(rearrangeArray(nums))

//TRANSLATION FORM RUBY INTO SUPERFAST JS | LEARNED =>
//TO USE new Int32Array(nums.length) > new Array(nums.length).fill(0)
var rearrangeArray = function(nums) {
  const res = new Int32Array(nums.length); // faster then Array(n).fill(0) if ints, well in js "numbers"
  let index_even = 0;
  let index_odd = 1;
  for(let i = 0; i < nums.length; i++){
      if(nums[i] < 0){
          res[index_odd] = nums[i];
          index_odd += 2;
      }else{
          res[index_even] = nums[i];
          index_even += 2;
      }
  }
  return res;
};
console.log(rearrangeArray(nums))