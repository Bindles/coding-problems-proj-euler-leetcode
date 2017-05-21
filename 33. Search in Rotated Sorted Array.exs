#* 33. Search in Rotated Sorted Array
nums = [4,5,6,7,0,1,2]; target = 0
defmodule Solution do
  @spec search(nums :: [integer], target :: integer) :: integer
  def search(nums, target) do
    Enum.find_index(nums,&(&1 == target))
  end
end
