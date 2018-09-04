def array_to_hash(array)
  hash_value={}
  array.each.with_index {|value,index|hash_value[index] = value}
  hash_value
end

array_to_hash([4,5,6])