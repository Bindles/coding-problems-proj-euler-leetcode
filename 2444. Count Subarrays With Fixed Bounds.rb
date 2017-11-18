#* 2444. Count Subarrays With Fixed Bounds
nums = [1,3,5,2,7,5], minK = 1, maxK = 5
# @param {Integer[]} nums
# @param {Integer} min_k
# @param {Integer} max_k
# @return {Integer}
def count_subarrays(nums, min_k, max_k)
    
end

#*OG
def count_subarrays(nums, *b) =
  nums.chunk{ [*b, _1].minmax == b }.select(&:shift).sum { |a, h={}|
    a.zip(1..).sum { |x, i| h[x] = i and b.map { h[_1] or 0 }.min }
  }

  #*
  def count_subarrays(nums, *bounds)
    nums.chunk { [*bounds, _1].minmax == bounds }
        .select(&:shift)
        .sum do |subarray, index_hash = {}|
          subarray.zip(1..).sum do |element, index|
            index_hash[element] = index
            bounds.map { |bound| index_hash[bound] || 0 }.min
          end
        end
  end

  
  #*
  def count_subarrays(nums, *bounds)
    nums.chunk { [*bounds, _1].minmax == bounds }
        .select(&:shift)
        .sum { |subarray, index_hash = {}|
          subarray.zip(1..).sum { |element, index| index_hash[element] = index and bounds.map { |bound| index_hash[bound] || 0 }.min }
        }
  end
  