// 1486. XOR Operation in an Array
n = 4; start = 3
public class Solution {
    public int XorOperation(int n, int start) {
        int total = 0;
        for (int i = 0; i < n; i++) {
            total ^= start + 2 * i;
        }
        return total;
    }
}