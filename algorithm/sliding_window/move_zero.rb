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

#* SOL 2
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nums.reverse_each.with_index do |i,ind|
      if i==0
      nums.push(nums.delete_at((nums.size-1)-ind))
      end   
  end 
  nums
end
