# Example: Convert keys of a hash to uppercase
hash = { name: 'John', age: 30 }
new_hash = hash.transform_keys { |key| key.to_s.upcase }
p new_hash
# Output: {"NAME"=>"John", "AGE"=>30}
