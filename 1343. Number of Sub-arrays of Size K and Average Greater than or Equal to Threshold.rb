#* 1343. Number of Sub-arrays of Size K and Average Greater than or Equal to Threshold
arr = [2,2,2,2,5,5,5,8]; k = 3; threshold = 4
# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} threshold
# @return {Integer}
def num_of_subarrays(arr, k, threshold)
  count=0
  (0..arr.size-k).each do |i|
    p arr[i...i+k]
    p arr[i...i+k].sum / 3 >= threshold
    count+=1 if arr[i...i+k].sum / 3 >= threshold
  end
  count
end
p num_of_subarrays(arr, k, threshold)