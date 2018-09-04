arr = (1..16).to_a

# .each
arr.each.with_index {|value,index| arr.slice(index-3,4).each {|num|puts "#{num} on value #{value}"} unless((index - 3) % 4 != 0) }

# .each_slice
arr.each_slice(4).with_index {|value,index|value.each {|num| puts "#{num} on group #{index}"}}
