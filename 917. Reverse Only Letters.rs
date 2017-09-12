// RUST
// 917. Reverse Only Letters
//s = "ab-cd"
//SOL
impl Solution {
    pub fn reverse_only_letters(s: String) -> String {
        // Collect all the letters in the string
        let mut letters: Vec<char> = s.chars().filter(|c| c.is_alphabetic()).collect();
        // Reverse the string by replacing letters with those from the collected letters in reverse order
        s.chars()
            .map(|c| if c.is_alphabetic() { letters.pop().unwrap() } else { c })
            .collect()
    }
}

