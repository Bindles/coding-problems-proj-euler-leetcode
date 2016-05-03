// 2788. Split Strings by Separator
//words = ["one.two.three","four.five","six"]
//separator = "."
import java.util.List;
import java.util.ArrayList;

class Solution {
    public List<String> splitWordsBySeparator(List<String> words, char separator) {
        List<String> result = new ArrayList<>();
        for (String word : words) {
            String[] splitWords = word.split(Character.toString(separator));
            for (String splitWord : splitWords) {
                if (!splitWord.isEmpty()) {
                    result.add(splitWord);
                }
            }
        }
        return result;
    }

    public static void main(String[] args) {
        Solution solution = new Solution();
        List<String> words = List.of("one.two.three", "four.five", "six");
        char separator = '.';
        List<String> result = solution.splitWordsBySeparator(words, separator);
        System.out.println(result);
    }
}
