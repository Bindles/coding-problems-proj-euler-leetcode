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

def repeated_character(s)
    p tal = Hash.new(0)
    s.chars.each do |c|
        return c if tal[c] == 1
        p tal[c]
        tal[c] =1
    end
end
p repeated_character(s)