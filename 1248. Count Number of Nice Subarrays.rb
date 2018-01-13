#* 1248. Count Number of Nice Subarrays
nums = [1,1,2,1,1]; k = 3
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
#*SOLVING FINALLY
#* 1
def number_of_subarrays(nums, k)
  count_hash = Hash.new(0)
  count_hash[odd_count = 0] = 1
  nums.sum do |num|
    odd_count += num & 1
    count_hash[odd_count] += 1
    count_hash[odd_count - k]
  end
end

#* 2
def number_of_subarrays(nums, k)
  odd = 0
  dic = Hash.new(0)
  dic[0] = 1
  l = nums.length
  count = 0

  (0...l).each do |i|
    odd += (nums[i] % 2)
    count += dic[odd - k]
    dic[odd] += 1
  end

  count
end
p number_of_subarrays(nums, k)

#* SW 3
def number_of_subarrays(nums, k)
  count = 0
  left = 0
  nice_subarrays = 0
  current_count = 0

  nums.each_with_index do |num, right|
    if num % 2 != 0
      current_count += 1
      count = 0
    end
    if current_count == k
      while left < nums.length && nums[left] % 2 == 0
        count += 1
        left += 1
      end
      count += 1
      current_count -= 1
      left += 1
    end
    nice_subarrays += count
  end
  nice_subarrays
end


#*WORKING . . .
#*
def number_of_subarrays(nums, k)
  (0...nums.size).each do |i|
    p nums[i..k]
    end
end
p number_of_subarrays(nums, k)

def number_of_subarrays(nums, k)
  n=nums.size
  (0...n).each do |i|
    (i...n).each do |j|
      p nums[i..j]
    end
  end
end
p number_of_subarrays(nums, k)

p nums.all?{|n| n.odd?}
p nums.all?(&:odd?)

def sliding_window(nums, k)
  return if nums.size < k

  # Initial window
  window_sum = nums[0, k].sum
  puts "#{nums[0, k].inspect}"

  # Slide the window
  (0...nums.size - k).each do |i|
    window_sum = window_sum - nums[i] + nums[i + k]
    puts "#{nums[i + 1, k].inspect}"
  end
end
sliding_window(nums, k)


def sliding_window(nums, k)
  count=0
  return if nums.size < k

  (0...nums.size).each do |start|
    (start + k - 1...nums.size).each do |end_index|
      puts nums[start..end_index].inspect
      count +=1 if nums[start..end_index].count(&:odd?) == 3
    end
  end
  count
end
p sliding_window(nums, k)


def sliding_window(nums, k)
  count = 0

  (0...nums.size).each do |start|
    (start + k - 1...nums.size).each do |end_index|
      subarray = nums[start..end_index]
      count += 1 if subarray.count(&:odd?) == 3
    end
  end
  count
end
p sliding_window(nums, k)

def sliding_window(nums, k)
  return 0 if nums.size < k

  (0...nums.size).sum do |start|
    (start + k - 1...nums.size).count do |end_index|
      subarray = nums[start..end_index]
      subarray.count(&:odd?) == 3
    end
  end
end
p sliding_window(nums, k)

#* 
def number_of_subarrays(nums, k)
  odd = []
  nums.each_with_index do |num, i|
    odd << i if num % 2 == 1
  end

  res = 0
  l = r = cnt = 0
  n = odd.length
  while r < n
    num = odd[r]
    cnt += 1
    r += 1

    if l < r && cnt == k
      l = odd[l] - (odd[l - 1] if l - 1 >= 0)
      r = (odd[r] - num) if r < n else (nums.length - num)
      res += l * r

      cnt -= 1
      l += 1
    end
  end
  res
end
p number_of_subarrays(nums, k)