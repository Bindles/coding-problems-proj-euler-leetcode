// 1725. Number Of Rectangles That Can Form The Largest Square
rectangles = [[5,8],[3,9],[5,12],[16,5]]


// def count_good_rectangles(rectangles)
//   rectangles.map{|rec| rec.min }.count(rectangles.map{|rec| rec.min }.max)
// end
console.log (
rectangles.filter(rec => Math.min(...rec))
)
//RUBY TRANSLATION
function countGoodRectangles(rectangles) { return rectangles.map(rec => Math.min(...rec)).filter(value => value === Math.max(...rectangles.map(rec => Math.min(...rec)))).length; }
console.log(countGoodRectangles(rectangles)); 

//REABABLE SOL
function countGoodRectangles(rectangles) {
  const minValues = rectangles.map(rec => Math.min(...rec));
  const maxValue = Math.max(...minValues);
  return minValues.filter(value => value === maxValue).length;
}
console.log(countGoodRectangles(rectangles))



