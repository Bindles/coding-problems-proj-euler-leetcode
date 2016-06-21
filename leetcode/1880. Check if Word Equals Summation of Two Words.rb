#* 1880. Check if Word Equals Summation of Two Words
first_word = "acb"; second_word = "cba"; target_word = "cdb"
# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}

# p letters = ('a'..'z').to_a
# p vals = (0..25).to_a
# p map = letters.zip(vals).to_h
# p map = Hash[letters.zip(vals)]
# p [0,2,1].join.to_i
#*
def is_sum_equal(first_word, second_word, target_word)
    letters = ('a'..'z').to_a
    map = Hash[letters.zip(0..25)]
    
    a = first_word.chars.map { |l| map[l] }.join.to_i
    b = second_word.chars.map { |l| map[l] }.join.to_i
    c = target_word.chars.map { |l| map[l] }.join.to_i

    a + b == c
end
p is_sum_equal(first_word, second_word, target_word)

#* OG UNCLEAN CODE
def is_sum_equal(first_word, second_word, target_word)
    p letters = ('a'..'z').to_a
    p map = letters.zip((0..25).to_a).to_h
    p a = first_word.split('').map{|l| map[l]}.join('').sub(/^0+/, '').to_i
    p b = second_word.split('').map{|l| map[l]}.join('').sub(/^0+/, '').to_i
    p c = target_word.split('').map{|l| map[l]}.join('').sub(/^0+/, '').to_i

    a + b == c ? true : false
end
p is_sum_equal(first_word, second_word, target_word)

