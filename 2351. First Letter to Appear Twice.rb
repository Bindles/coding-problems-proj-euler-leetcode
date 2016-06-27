#* 2351. First Letter to Appear Twice
s = "abccbaacz"
# @param {String} s
# @return {Character}
def repeated_character(s)
arr=[]
    s.chars.each do |c|
        return c if arr.include?(c)
        arr << c
    end
end
p repeated_character(s)