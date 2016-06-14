def largest_good_integer(num)
  matchesz = num.scan(/((\d)\2{2})/).map { |match| [match[0]] }
  puts "Matchesz: #{matchesz}"

  matchesx = num.scan(/((\d)\2{2})/)
  puts "Matchesx: #{matchesx}"
  # Step 1: Using regex to find groups of three identical digits
  matches = num.scan(/(\d)\1{2}/)
  puts "Matches: #{matches}"
  ##RESULT: Matches: [["7", ["3"]]

  # Step 2: Flattening the array
  flattened_array = matches.flatten
  puts "Flattened Array: #{flattened_array}"

  # Step 3: Finding the maximum value or an empty string
  max_value = flattened_array.max || ""
  puts "Max Value: #{max_value}"

  # Step 4: Repeating the maximum value three times
  result = max_value * 3
  puts "Result: #{result}"

  return result
end

# Example usage
largest_good_integer("6777133339")
