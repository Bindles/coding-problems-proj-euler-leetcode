// 34. Find First and Last Position of Element in Sorted Array
nums = [5,7,7,8,8,10]; target = 8
//SOL
public class Solution {
    public int[] SearchRange(int[] nums, int target) {
        List<int> res = new List<int>();
        for (int i = 0; i < nums.Length; i++) {
            if (nums[i] == target) {
                res.Add(i);
            }
        }
        
        if (res.Count == 0) {
            return new int[] {-1, -1};
        } else {
            return new int[] {res[0], res[res.Count - 1]};
        }
    }
}
