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

//SOL 2 | HASHMAP
pub fn num_of_pairs_map(nums: Vec<String>, target: String) -> i32 {
	let mut map = std::collections::HashMap::new();
	let mut count = 0;
	let t_len = target.len();

	for i in 0..nums.len() {
		let num = nums[i].to_owned();
		let n_len = num.len();

		if target.starts_with(&num) {
			let suffix = &target[n_len..];

			if map.contains_key(suffix) {
				count += map[suffix];
			}
		}

		if target.ends_with(&num) {
			let prefix = &target[..t_len - n_len];

			if map.contains_key(prefix) {
				count += map[prefix];
			}
		}

		*map.entry(num).or_insert(0) += 1;
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
