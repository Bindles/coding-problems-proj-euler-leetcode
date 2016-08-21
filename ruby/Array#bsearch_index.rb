# Example: Find the index of the first element greater than or equal to 5
numbers = [1, 3, 5, 7, 9]
index = numbers.bsearch_index { |x| x >= 5 }
p index
# Output: 2
