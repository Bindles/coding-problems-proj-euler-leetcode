#* 917. Reverse Only Letters
s = "ab-cd"
# @param {String} s
# @return {String}
#*
def reverse_only_letters(s)
  letters = s.chars.select { |c| c =~ /[a-z]/i }
  s.chars.map { |c| c =~ /[a-z]/i ? letters.pop : c }.join
end
#* 
def reverse_only_letters(s)
  letters = s.scan(/[a-zA-Z]/)
  s.gsub(/[a-z]/i) { letters.pop }
end

def reverse_only_letters(s)
    p dashmap = s.chars.map.with_index{|c,i| i if c == '-'}
    a = s.chars.map.with_index{|c, i| c if dashmap[i].nil? }.reverse
    b =a.map{|c| c.nil? ? '-' : c}.join
    b
end
p reverse_only_letters(s)

def reverse_only_letters(s)
  p dashmap = s.chars.map.with_index{|c,i| i if c == '-'}
  a = s.chars.map.with_index{|c, i| c if dashmap[i].nil? }.reverse
  b =a.map{|c| c.nil? ? '-' : c}.join
  b
end
p reverse_only_letters(s)

def reverse_only_letters(s)
  s.chars.map{|c| c == '-' ? nil : c}.reverse.map{|c| c.nil? ? '-' : c}.join
end
p reverse_only_letters(s)

#* ALMOST
def reverse_only_letters(s)
  p dashmap = s.chars.map.with_index{|c,i| i if c == '-'}.compact
  p revd = s.chars.map{|c| c == '-' ? nil : c}.compact.reverse.join
  dashmap.each do |index|
    revd.insert(index,'-')
  end
  p revd
end
p reverse_only_letters(s)

#* CLOSE ISH WANDERING AWAY
def reverse_only_letters(s)
  p dashmap = s.chars.map.with_index{|c,i| [i,c] unless c =~ /[a-z]/i}.compact
  p revd = s.chars.map{|c| c == '-' ? nil : c}.compact.reverse.join
  dashmap.each do |index|
    revd.insert(index.first,index.last)
  end
  p revd
end
p reverse_only_letters(s)



#arr insert
#reg
p arr = [0,1,2,3,4]
p arr[2] = 100
p arr
#pushover
p arr = [0,1,2,3,4]
p arr.insert(2,100)
p arr

p dashmapp = s.chars.map.with_index{|c,i| i if c == '-'}
p dashmapp.compact


p [1,2,3,nil,nil,5].flat_map{|c| c == 1}