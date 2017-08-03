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


def mincost_to_hire_workers(quality, wage, k)
  n = quality.size
  total_cost = Float::INFINITY
  current_total_quality = 0
  wage_to_quality_ratio = []
  for i in (0...n)
      wage_to_quality_ratio << [wage[i]/quality[i].to_f, quality[i]]
  end

  wage_to_quality_ratio.sort_by! { |x| x[0] }
  highest_quality_workers = []

  for i in (0...n)
      val = wage_to_quality_ratio[i][1]
      idx = highest_quality_workers.bsearch_index { |d| val <= d } || highest_quality_workers.size
      highest_quality_workers.insert(idx, val)
      current_total_quality += val

      if highest_quality_workers.size > k
          current_total_quality -= highest_quality_workers.pop
      end

      if highest_quality_workers.size == k
          total_cost = [total_cost, current_total_quality * wage_to_quality_ratio[i][0]].min
      end
  end

  total_cost
end


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
