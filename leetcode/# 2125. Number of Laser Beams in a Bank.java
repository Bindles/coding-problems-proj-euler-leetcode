2125. Number of Laser Beams in a Bank
bank = ["011001","000000","010100","001000"]
import java.util.List;

class Solution {
    public int numberOfBeams(List<String> bank) {
        int ans = 0, temp = 0;
        for (String str : bank) {
            int n = str.replaceAll("[^1]", "").length();
            if (n == 0) continue;
            ans += temp * n;
            temp = n;
        }
        return ans;
    }
}



