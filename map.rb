numbers = [1, 2, 3, 4, 5]
squared_numbers = numbers.collect { |num| num * num }

puts squared_numbers.inspect  # Output: [1, 4, 9, 16, 25]
