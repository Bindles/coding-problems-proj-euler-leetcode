#* 1486. XOR Operation in an Array
n = 4; start = 3
# @param {Integer} n
# @param {Integer} start
# @return {Integer}
#*
def xor_operation(n, start)
    Array.new(n, 0).map.with_index{|num,index| start + num + 2 * index}.reduce(&:^)
end
p xor_operation(n, start)

#*
def xor_operation(n, start)
    arr = Array.new(n, 0)
    arr.map.with_index{|num,index| start + num + 2 * index}.reduce(&:^)
end
p xor_operation(n, start)

#* WRITTEN OUT | (BEFORE COMPLETING IN PY,JS,RUST)
def xor_operation(n, start)
    total=0 #rs=let arr=vec![0; n];#python | js 
    arr = Array.new(n, 0) # arr = [0] * n | let arr = new Array(n).fill(0);
    res = arr.map.with_index{|num,index| start + num + 2 * index}
    res.each do |num|
        total ^= num
    end
    total
end
p xor_operation(n, start)



