#* 1486. XOR Operation in an Array
n = 4; start = 3
# @param {Integer} n
# @param {Integer} start
# @return {Integer}
#*
def xor_operation(n, start)
    arr = Array.new(n, 0)
    arr.map.with_index{|num,index| start + num + 2 * index}.reduce(&:^)
end
p xor_operation(n, start)

