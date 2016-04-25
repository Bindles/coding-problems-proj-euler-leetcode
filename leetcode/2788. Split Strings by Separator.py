#* 2788. Split Strings by Separator
words = ["one.two.three","four.five","six"]
separator = "."
from typing import List
class Solution:
    def splitWordsBySeparator(self, words: List[str], separator: str) -> List[str]:
        return [word for segment in words for word in segment.split(separator) if word != '']
    
print(Solution().splitWordsBySeparator(words,separator))
        