#* 1304. Find N Unique Integers Sum up to Zero
n = 5
# @param {Integer} n
# @return {Integer[]}
#*
def sum_zero(n)
    result = []
    result.push(0) if n.odd?
    (1..n/2).each{|i| result.push(i,-i)}
    result
end
p sum_zero(n)