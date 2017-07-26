// 2023. Number of Pairs of Strings With Concatenation Equal to Target
// nums = ["777","7","77","77"]; target = "7777"
//SOL | RUBY TRANSLATION
pub fn num_of_pairs(nums: Vec<String>, target: String) -> i32 {
	let mut count = 0;
	for i in 0..nums.len() {
		if nums[i].len() >= target.len() {continue; }

		for j in 0..nums.len() {
			if i == j || nums[j].len() >= target.len() { continue; }
			if format!("{}{}", nums[i], nums[j]) == target { count += 1; }
		}
	}

	count
}

//WORKING . . .
//DOESNT WORK | DIRECT RUBY TRANSLATION
impl Solution {
    pub fn num_of_pairs(nums: Vec<String>, target: String) -> i32 {
        nums.iter().enumerate().map(|(i, _)| {
            (i + 1..nums.len()).filter(|&j| format!("{}{}", nums[i], nums[j]) == target).count() as i32
        }).sum()
    }
}
