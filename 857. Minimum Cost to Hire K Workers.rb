#* 857. Minimum Cost to Hire K Workers
quality = [10,20,5]; wage = [70,50,30]; k = 2
require 'containers'
# @param {Integer[]} quality
# @param {Integer[]} wage
# @param {Integer} k
# @return {Float}
#*
def mincost_to_hire_workers(quality, wage, k)
  max_heap = Containers::MaxHeap.new
  sum = 0
  wage.zip(quality)
      .map{|wage,qual| [wage.to_f/qual, qual] }
      .sort
      .map{|ratio,worker_quality|sum+=max_heap<<worker_quality and ratio.* sum -= max_heap.size>k ? max_heap.pop : 0 }[k-1..].min
end
p mincost_to_hire_workers(quality, wage, k)


#* WORKING . . .
#* DOESNT WORK
def mincost_to_hire_workers(quality, wage, k)
  max_heap = Containers::MaxHeap.new
  total_quality = 0
  
  wage_quality_ratio = wage.zip(quality).map { |wage, quality| [wage.to_f / quality, quality] }.sort
  
  wage_quality_ratio.each do |ratio, worker_quality|
    total_quality += max_heap << worker_quality
    total_quality -= max_heap.pop if max_heap.size > k
    return ratio * total_quality if max_heap.size == k
  end
end
p mincost_to_hire_workers(quality, wage, k)
