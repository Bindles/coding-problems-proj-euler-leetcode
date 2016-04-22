// 7. Reverse Integer
//x = 123
//
impl Solution {
  pub fn reverse(x: i32) -> i32 {
      let mut n = x.abs().to_string().chars().rev().collect::<String>().parse::<i32>().unwrap_or(0);
      if n > 2147483647 {
          return 0;
      }
      if x < 0 {
          n *= -1;
      }
      n
  }
}
