2125. Number of Laser Beams in a Bank
bank = ["011001","000000","010100","001000"]
# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
    result = temp = 0
    bank.each do |s|
        n = s.count('1')
        next if n == 0
        result += temp * n
        temp = n
    end
    result
end