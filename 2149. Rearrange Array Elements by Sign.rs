// 2149. Rearrange Array Elements by Sign
// nums = [3,1,-2,-5,2,-4]
//SOL PARTITION => pos.zip(neg)
impl Solution {
  pub fn rearrange_array(nums: Vec<i32>) -> Vec<i32> {
      let (positives, negatives): (Vec<i32>, Vec<i32>) = nums.into_iter().partition(|&x| x > 0);
      let mut result = vec![];
      
      for (positive, negative) in positives.into_iter().zip(negatives.into_iter()) {
          result.push(positive);
          result.push(negative);
      }
      result
  }
}
