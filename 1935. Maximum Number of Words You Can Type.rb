#* 1935. Maximum Number of Words You Can Type
text = "hello world"; broken_letters = "ad"
# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  text.split.map { |w| w.chars.any? { |c| broken_letters.include?(c) } }.count(false)
end
p can_be_typed_words(text, broken_letters)