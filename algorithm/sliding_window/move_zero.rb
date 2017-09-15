nums = [0, 1, 0, 3, 12];

def movez(nums)
  old_len = nums.size
  nums.delete(0)
  zeroamount = Array.new(old_len-nums.size, 0)
  p zeroamount
  nums.push(*zeroamount)
end
p movez(nums)

mya = Array.new(5, 0)
p mya


