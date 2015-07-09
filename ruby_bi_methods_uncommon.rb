# Ruby Uncommon Built-in Methods Cheatsheet
# 1. each_cons(n)

# Usage: Iterates over elements in consecutive groups of size n.
# Example:

[1, 2, 3, 4, 5].each_cons(2) { |pair| p pair }
# Output: [1, 2], [2, 3], [3, 4], [4, 5]
2. each_slice(n)

# Usage: Iterates over elements in groups of size n.
# Example:

[1, 2, 3, 4, 5].each_slice(2) { |slice| p slice }
# Output: [1, 2], [3, 4], [5]

# 3. each_with_index
# Usage: Iterates over elements with their index.
# Example:

["a", "b", "c"].each_with_index { |item, index| p "#{item} at index #{index}" }
# Output: "a at index 0", "b at index 1", "c at index 2"

# 4. map.with_index
# Usage: Maps elements to a new array with their index.
# Example:

["a", "b", "c"].map.with_index { |item, index| "#{item}-#{index}" }
# Output: ["a-0", "b-1", "c-2"]

# 5. tap
# Usage: Yields the object to a block and returns the object itself.
# Example:

[1, 2, 3].tap { |arr| arr << 4 }.map { |x| x * 2 }
# Output: [2, 4, 6, 8]

# 6. itself
# Usage: Returns the receiver itself.
# Example:

[1, 2, 3].map(&:itself)
# Output: [1, 2, 3]

# 7. to_h
# Usage: Converts an enumerable object to a hash.
# Example:

["a", "b", "c"].map.with_index.to_h
# Output: {"a"=>0, "b"=>1, "c"=>2}

# 8. Object#singleton_class
# Usage: Returns the singleton class of an object.
# Example:

obj = Object.new
class << obj
  def greet
    puts "Hello!"
  end
end
obj.singleton_class.instance_methods(false) # => [:greet]

# 9. Enumerable#grep_v(pattern)
# Usage: Returns elements not matching a pattern.
# Example:

[1, "a", 2, "b"].grep_v(String) # => [1, 2]

# 10. String#tr_s
# Usage: Translates and squeezes characters in a string.
# Example:

"hello".tr_s("lo", "12") # => "he12"