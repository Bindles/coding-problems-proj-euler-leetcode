#* 1725. Number Of Rectangles That Can Form The Largest Square
rectangles = [[5,8],[3,9],[5,12],[16,5]]
#* SOL 1
def count_good_rectangles(rectangles):
  rectsq = [min(subarray) for subarray in rectangles]
  return rectsq.count(max(rectsq)) 

print(count_good_rectangles(rectangles))
#* SOL 1.1 ONELINER
def count_good_rectangles(rectangles):
  return [min(subarray) for subarray in rectangles].count(max([min(subarray) for subarray in rectangles]))

print(count_good_rectangles(rectangles))

print("tests")
#*TEST
for subarray in rectangles:
  print(min(subarray))

rectsq = [min(subarray) for subarray in rectangles]
print(rectsq.count(max([min(subarray) for subarray in rectangles]))) 

rectsq = [min(subarray) for subarray in rectangles]
print(rectsq.count(max(rectsq))) 

#* RUBY TRANSLATION
# def count_good_rectangles(rectangles)
#   rectangles.map{|rec| rec.min }.count(rectangles.map{|rec| rec.min }.max)
# end



