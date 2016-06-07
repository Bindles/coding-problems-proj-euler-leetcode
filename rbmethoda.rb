# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x.to_s == x.to_s.reverse
end

#Array.wrap(0)
z = Array(foo: :bar)
#Array.wrap(foo: :bar)
p z

# array = [1, [2, 3]]
# dup   = array.dup
# dup[1][2] = 4

# array[1][2] # => nil
# dup[1][2]   # => 4
# p ["David", "Rafael", "Aaron", "Todd"].excluding("Aaron", "Todd")

p [1, 2, 3, 4, 5].partition { |n| n.even? }

# numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# odd_numbers = numbers.extract { |number| number.odd? } # => [1, 3, 5, 7, 9]
# numbers # => [0, 2, 4, 6, 8]

#(1..42).to_a.forty_two

#%w( a b c d e ).fourth 

# @param {Integer} n
# @return {Integer}
def climb_stairs(n=3)
    (n).times.with_object([0,1]) {|_, arr| arr << arr[-1] + arr[-2] }[n+1]
end

def climb_stairs(n=2)
    (n).times.with_object([0,1]) {|_, arr| arr << arr[-1] + arr[-2] }[n+1]
end

def climb_stairs(n=2)
    arr=[0,1]
    (n).times {arr << arr[-1] + arr[-2] }[n]
end
def climb_stairs(n = 5)
    arr = [0, 1]
  
    n.times do
      arr << arr[-1] + arr[-2]
    end
  
    arr[n]
end
def climb_stairs(n = 12)
    arr = [0, 1]
  
    n.times do
      arr << arr[-1] + arr[-2]
    end
  
    arr[n]
end
p climb_stairs

def climb_stairs(n=6)
    arr=[]
    n.times {arr[0], arr[1] = arr.last, arr.sum }.last
end







def climb_stairsa(n=7)
    arr = [0, 1]
    n.times do
      arr << arr[-1] + arr[-2]
    end
    arr.last
end
p climb_stairsa

def climb_stairsA(n=7)
    arr=[0, 1]; n.times {arr << arr[-1] + arr[-2]} and arr.last
end
p climb_stairsA

def climb_stairsb(n = 7)
    arr = [0, 1]
  
    n.times do
      arr[0], arr[1] = arr[1], arr.sum
    end
  
    arr.last
end
p climb_stairsb

def climb_stairsB(n = 7)
    arr=[0, 1];n.times {arr[0], arr[1] = arr[1], arr.sum} and arr.last
end

p climb_stairsB


  
#p climb_stairs


def total_money(n=10)
    result=0
    inc=1
    n.times.with_index(1) do |_, i|
        p result += inc 
        inc+=1
        inc -= 6 if i / 7 == 1
    end
    p result
    
end
total_money

#OG | FAILS "000"
def largest_good_integer(num = "677713399733")
    result=[]
    a =num.to_i.digits.reverse
    p a
    au = a.uniq
    p au

    au.each {|each| p a.count(each); result << each if a.count(each) >= 3}
    p result
    p a.join.to_s
    while !result.empty?
        z = result.max
        p  a.join.to_s.include?(result.max.to_s*3)
        if a.join.to_s.include?(result.max.to_s*3)
            return result.max.to_s*3
        else 
        result.delete(z)
        end
        p result
    end
    return ""
end
#p largest_good_integer


def largest_good_integer(num)
    result = []
    a = num.to_i.digits.reverse
  
    au = a.uniq
  
    au.each do |each|
      result << each if a.count(each) >= 3
    end
  
    good_integers = result.select do |digit|
      a.join.to_s.include?(digit.to_s * 3)
    end
  
    return good_integers.max.to_s * 3 unless good_integers.empty?
  
    return "000" if a.count(0) == a.length
  
    return ""
end
  
  
  p largest_good_integer("000")



#OTHERS
def largest_good_integer(num)
    substr_array = []
    (num.length-2).times do |i|
      if num[i] == num[i+1] && num[i] == num[i+2]
        substr_array.push num[i..i+2]
      end
    end
    substr_array.sort.last || ""
end


#ONERS
#REGEX
def largest_good_integer(num)
    (num.scan(/(\d)\1{2}/).flatten.max || "") * 3
end

#NOREGEX
def largest_good_integer(num)
    (2...num.length).reduce("") {|largest, i| [largest, num[i] == num[i-1] && num[i] == num[i-2] ? num[i-2..i] : ""].max}
end

def largest_good_integer(num)
    num.scan(/((\d)\2{2})/).sort { |a, b| a.first <=> b.first }&.last&.first || ''
end



numz = "677713399733"
p matchesz = numz.scan(/((\d)\2{2})/).map { |match| [match[0]] }.flatten.max || ""

def aaa(num="677713399733")
    num.scan(/((\d)\2{2})/).map{ |match| [match[0]] }.flatten.max || ""
end
p aaa
