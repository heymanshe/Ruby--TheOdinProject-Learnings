# Simple Matching
value = [1, 2]

case value
in [1, 2, 3]
  puts "Matched the exact array"
else
  puts "No match"
end


# Extracting values

value = [1, 2, 3]

case value
in [x, y, z]
  puts "x = #{x}, y = #{y}, z = #{z}"
else 
  puts "No match"
end

# Partial Matching

value = [2, 4, 7]

case value
in [_, y, _]
  puts "y = #{y}"
else
  puts "No match"
end

# return values
# example-1

grade = 'C'

case grade
in 'A' then puts 'Amazing effort'
in 'B' then puts 'Good work'
in 'C' then puts 'Well done'
in 'D' then puts 'Room for improvement'
else puts 'See me'
end

# example-2

grade = 'C'

result = case grade
  in 'A' then 1
  in 'B' then 2
  in 'C' then 3
  else 0
end

puts result

#if no match found- NoMatchingPatternError