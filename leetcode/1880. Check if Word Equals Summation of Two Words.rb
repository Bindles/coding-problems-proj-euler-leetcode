#* 1880. Check if Word Equals Summation of Two Words
first_word = "acb"; second_word = "cba"; target_word = "cdb"
# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
    p first_word.split('').map(&:ord)
end
p is_sum_equal(first_word, second_word, target_word)