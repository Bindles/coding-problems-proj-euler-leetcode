# tap: This method yields the calling object to a block, and then returns the object itself. It's often used for method chaining or debugging.
[1, 2, 3].tap { |x| puts "original: #{x.inspect}" }.map! { |x| x * x }.tap { |x| puts "squared: #{x.inspect}" }
# Enumerator: This class allows you to create enumerable objects from arbitrary objects by providing methods such as each, with_index, and next.
enum = Enumerator.new do |yielder|
    yielder << 1
    yielder << 2
    yielder << 3
end
enum.each_with_index { |val, index| puts "#{index}: #{val}" }
# Object#public_send: Similar to send, but it only invokes public methods.
obj = "hello"
puts obj.public_send(:upcase)  # Outputs: HELLO
# Object#instance_eval: Allows you to execute a block in the context of an object.
obj = "hello"
obj.instance_eval { puts self }  # Outputs: hello
# Enumerable#chunk: Groups elements based on the return value of the block.
(1..10).chunk { |i| i.even? }.each { |even, nums| puts "#{even ? 'Even' : 'Odd'}: #{nums}" }

#py
# s="Hello"
# print(s[::-1])