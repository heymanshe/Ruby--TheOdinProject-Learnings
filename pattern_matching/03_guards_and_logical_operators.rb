# guards are additional conditions

value = [10, 20]

case value
in [x, y] if x > y
  puts "x (#{x}) is greater than y (#{y})"
else
  puts "No match"
end


# logical operator or Alternative Pattern
value = 5

case value
in 1 | 3 | 5 | 7
  puts "Matched an odd number!"
else
  puts "No match"
end


# Pin Operator - variable in a pattern is treated as a value for comparison, not as a variable to assign to
a = 5

case 5
in ^a
  puts 'Matched the value of a'
else 
  puts 'No match'
end


# pattern matching against custom class

class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end

  # unpack the object as an array
  def deconstruct
    [x, y]
  end
end

point = Point.new(3, 4)

case point
in Point(3, 4)
  puts 'Matched the point'
end

# for hashes use deconstruch_key

class Rectangle
  attr_reader :width, :height

  def initialize(width, height)
    @width, @height = width, height
  end

  # Define deconstruct_keys to unpack the object as a hash
  def deconstruct_keys(keys)
    { width: width, height: height }
  end
end

rectangle = Rectangle.new(10, 20)

case rectangle
in { width: 10, height: 20 }
  puts 'Matched a 10x20 rectangle'
in { width: w, height: h }
  puts "Rectangle dimensions are #{w}x#{h}"
end