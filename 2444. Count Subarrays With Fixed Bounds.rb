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

  #*
  def count_subarrays(nums, *bounds)
    nums.chunk { [*bounds, num].minmax == bounds }
        .select(&:shift)
        .sum { |subarray, index_hash = {}|
          subarray.zip(1..).sum { |element, index| index_hash[element] = index and bounds.map { |bound| index_hash[bound] || 0 }.min }
        }
  end


  #* 2 FS
  def count_subarrays(nums, *b)
    nums.chunk { (b[0]..b[1]) === _1 }
        .select(&:shift)
        .select { _1[0].minmax == b }
        .sum { |a, h = b.to_h { [_1, 0] }|
          a.zip(1..).sum { |x, i| h[x] &&= i
          h.values.min }
        }
  end

  
  #*
  def count_subarrays(nums, *bounds)
    nums.chunk { |num| (bounds[0]..bounds[1]) === num }
        .select(&:shift)
        .select { |subarray| subarray[0].minmax == bounds }
        .sum { |subarray, index_hash = bounds.to_h { |bound| [bound, 0] }|
          subarray.zip(1..).sum { |element, index| 
            index_hash[element] &&= index
            index_hash.values.min 
          }
        }
  end
  
  