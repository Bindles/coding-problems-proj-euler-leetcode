#* 1725. Number Of Rectangles That Can Form The Largest Square
rectangles = [[5,8],[3,9],[5,12],[16,5]]
# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  rectangles.map(&:min).count(rectangles.map(&:min).max)
end
p count_good_rectangles(rectangles)

def count_good_rectangles(rectangles)
  res=rectangles.map(&:min)
  res.count(res.max)
end
p count_good_rectangles(rectangles)

def count_good_rectangles(rectangles)
  rectangles.map{|rec| rec.min }.count(rectangles.map{|rec| rec.min }.max)
end
p count_good_rectangles(rectangles)