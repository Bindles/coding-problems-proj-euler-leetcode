# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}

def remove_element(nums, val)
  z=[]
  p nums
  nums.each.with_index.each do |num, i|
    p num
    z << i if num == val
  end
  p z
  p '--'
  p nums
  nums.delete(z)
  p nums
  k = nums.length
  return k
end

# def remove_element(nums, val)
#   z=[]
#   nums.each.with_index.each do |num, i|
#     z << i if num == val
#   end
#   nums.values_at(*z).each { |value| nums.delete(value) }
#   return nums.length
# end


# def remove_element(nums, val)
#   z=[]
#   nums.each.with_index.each { |num, i| z << i if num == val }
#   nums.values_at(*z).each { |value| nums.delete(value) }
#   return nums.length
# end

# def remove_element(nums, val)
#  nums.reject!{|num|num==val}
#  nums.length
# end

# def remove_element(nums, val)
#     nums.delete(val)
#     nums.length
# end

#remove_element([0,1,2,2,3,0,4,2], 2)


def na
nums=[1,2,3,4,5]
a=[1,2,3]
p nums, a

nums.reject!{|z|a.include?(z)}

p nums
nums=[1,2,3,4,5]

nums.reject!.with_index{|v,z|a.include?(z)}

p nums
end

def naz
nums=[1,2,3,4,5]
a=[1,2,3]
p '--'
p nums, "-"
p a
nums.reject!{|z|p "#value #{z} deleted" if a.include?(z)}
p nums
nums=[1,2,3,4,5]
a=[1,2,3]
p nums
nums.reject!.with_index{|v,z|p "indice #{z} deleted (value= #{v})" if a.include?(z)}
p nums
end

na