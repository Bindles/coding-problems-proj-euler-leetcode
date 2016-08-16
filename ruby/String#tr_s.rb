# Example: Replace consecutive whitespace characters with a single space
str = "hello    world"
new_str = str.tr_s(" \t\n\r\f\v", " ")
p new_str
# Output: "hello world"
