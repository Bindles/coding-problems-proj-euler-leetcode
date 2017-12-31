#* 3028. Ant on the Boundary
nums = [2,3,-5]
# @param {Integer[]} nums
# @return {Integer}
def return_to_boundary_count(nums)
  total = boundary_hits = 0
  nums.each do |num|
    total += num
    boundary_hits += 1 if total == 0
  end
  boundary_hits
end
p return_to_boundary_count(nums)