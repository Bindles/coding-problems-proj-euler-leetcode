#* 7. Reverse Integer
x = 123
def reverse(x)
  (res = x.to_s.reverse.to_i * (x < 0 ? -1 : 1)).bit_length > 31 ? 0 : res
end
p reverse(x)

def reverse(x)
    n = x.to_s.reverse.to_i
    return 0 if n > 2147483647
    x < 0 ?  -n : n
end
p reverse(x)