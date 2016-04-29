// 7. Reverse Integer
// = 123
//
public class Solution {
    public int Reverse(int x) {
        int n = int.Parse(string.Concat(Math.Abs(x).ToString().Reverse()));
        return n > 2147483647 ? 0 : (x < 0 ? -n : n);
    }
}
