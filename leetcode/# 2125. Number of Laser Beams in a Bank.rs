//2125. Number of Laser Beams in a Bank
bank = ["011001","000000","010100","001000"]
impl Solution {
    pub fn number_of_beams(bank: Vec<String>) -> i32 {
        bank
            .iter()
            .map(|s| s.chars().filter(|c| *c == '1').count() as i32)
            .filter(|&c| c > 0)
            .collect::<Vec<i32>>()
            .windows(2).map(|w| w[0] * w[1]).sum()
    }
}