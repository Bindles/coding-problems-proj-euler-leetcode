#* 1725. Number Of Rectangles That Can Form The Largest Square
rectangles = [[5,8],[3,9],[5,12],[16,5]]
# def count_good_rectangles(rectangles)
#   rectangles.map{|rec| rec.min }.count(rectangles.map{|rec| rec.min }.max)
# end

for subarray in rectangles:
  print(min(subarray))

rectsq = [min(subarray) for subarray in rectangles]
print(rectsq.count(max([min(subarray) for subarray in rectangles]))) 

rectsq = [min(subarray) for subarray in rectangles]
print(rectsq.count(max(rectsq))) 

def count_good_rectangles(rectangles):
  rectsq = [min(subarray) for subarray in rectangles]
  return rectsq.count(max(rectsq)) 

print(count_good_rectangles(rectangles))



