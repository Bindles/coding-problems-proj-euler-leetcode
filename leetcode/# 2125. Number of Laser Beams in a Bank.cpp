//2125. Number of Laser Beams in a Bank
#include <iostream>
#include <vector>
#include <string>

using namespace std;

class Solution {
public:
    int numberOfBeams(vector<string>& bank) {
        int res = 0;

        vector<int> v;
        for (auto a : bank) {
            string s = a;
            int cnt = 0;
            for (int i = 0; i < s.size(); i++) {
                if (s[i] == '1') cnt++;
            }
            if (cnt != 0) {
                v.push_back(cnt);
            }

        }

        for (int i = 1; i < v.size(); i++) {
            int t = v[i] * v[i - 1];
            res += t;
        }

        return res;
    }
};

int main() {
    vector<string> bank = {"011001", "000000", "010100", "001000"};
    Solution obj;
    int result = obj.numberOfBeams(bank);
    cout << "Number of laser beams in the bank: " << result << endl;
    return 0;
}
