# nested arrays
data = [1, [2, 3], 4]

case data
in [1, [x, y], 4]
  puts "x = #{x}, y = #{y}"
end


# matching hashes

person = { name: "Alice", age: 25 }

case person
in { name: "Alice", age: age }
  puts "Alice is #{age} years old"
else
  puts "No match"
end


# Partial matched hashes - can ignore keys using **

person = { name: "Bob", age: 30, city: "New York" }

case person
in { name: "Bob", ** }
  puts "Found Bob!"
else
  puts "No match"
end



