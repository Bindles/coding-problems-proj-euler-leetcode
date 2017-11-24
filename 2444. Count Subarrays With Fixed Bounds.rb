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
  
  #* 1 WRITTEN OUT
  def count_subarrays(nums, *bounds)
    # Chunk the array into groups where each element is within the range defined by bounds
    chunked_arrays = nums.chunk { |num| (bounds[0]..bounds[1]) === num }.to_a
  
    # Filter out chunks that start with a truthy value
    filtered_chunks = chunked_arrays.select do |condition, array|
      condition
    end
  
    # Further filter chunks where the first element's minmax equals the bounds
    valid_chunks = filtered_chunks.select do |condition, subarray|
      subarray[0].minmax == bounds
    end
  
    # Sum the lengths of valid subarrays
    total_count = valid_chunks.sum do |condition, subarray|
      # Initialize a hash with bounds elements set to 0
      index_hash = bounds.to_h { |bound| [bound, 0] }
  
      # Sum the contributions of each element in the subarray
      subarray_sum = subarray.zip(1..).sum do |element, index|
        # Update the index_hash with the current index if the element is in bounds
        index_hash[element] &&= index
  
        # Find the minimum value in the index_hash
        index_hash.values.min
      end
  
      # Return the sum of the subarray contributions
      subarray_sum
    end
  
    # Return the total count of subarrays
    total_count
  end
  