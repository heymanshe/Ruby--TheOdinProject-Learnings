# Creating a method
def my_name
  "Joe Smith"
end

puts my_name


# Parameters and arguments
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John")


# Default parameters
def greet(name = 'Stranger')
  "Hello, " + name + "!"
end

#puts greet("Ronnie")
puts greet

# Return method
def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number"
  else 
    "Thats is an odd number"
  end
end

puts even_odd("Ruby")


# Chaining method
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize


def say(words)
  puts words + '.'    
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
