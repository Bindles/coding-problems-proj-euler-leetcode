# Example: Split an array into chunks of consecutive even and odd numbers
numbers = [1, 2, 3, 4, 5, 6, 8, 10, 11]
chunks = numbers.chunk_while { |i, j| i.even? && j.even? || i.odd? && j.odd? }.to_a
p chunks
# Output: [[1], [2, 3], [4, 5, 6], [8, 10], [11]]
