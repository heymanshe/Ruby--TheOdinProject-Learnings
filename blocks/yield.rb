# The yield keyword allows you to invoke a block of code that is passed to a method.

# yield with a Block

def greet
  puts "Hey!"
  yield
  puts "Nice to meet you."
end

greet{ puts "What is your name?"}


# yield without block- we can check this with block_given method

def greet
  puts "Hello!"
  if block_given?
    yield
  else
    puts "No block provided!"
  end
  puts "Goodbye!"
end

greet { puts "Nice to meet you!" }  # With a block
greet                              # Without a block


# yield with argument
def introduce(name)
  puts "Let me introduce..."
  yield(name)
  puts "That’s all!"
end

introduce("Himanshi") { |name| puts "This is #{name}, a talented developer!" } # |name| is the parameter placeholder


# yield for iteration
def custom_each(array)
  for element in array
    yield(element)  # Pass each element to the block
  end
end

custom_each([1, 2, 3]) { |num| puts num * 2 }


# yield and return value
def calculate
  result = yield(10, 20)
  puts "The result is #{result}"
end

calculate { |a, b| a + b }


# can call yield within a method as many times as you want
def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}" }


# yield with each- use case (You're developing a banking app that needs to print transaction statements for various banks. 
# Each bank wants to display the transaction details in a unique format (e.g., different currency symbols, rounding styles, 
# or number of decimal places). How can you design the app so that each bank can define its own format for printing the transaction amounts, 
# while still using the same core code to process the transactions? banks, each bank requires the transactions to be printed in a different format 
@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    yield transaction # You just yield the transaction amount.
  end
end

transaction_statement do |transaction|
  p "%0.2f" % transaction # The bank that calls the method can define how it is handled.
end


# dealing with hashes
def awesome_method
  hash = {a: 'apple', b: 'banana', c: 'cookie'}

  hash.each do |key, value|
    yield key, value
  end
end

awesome_method { |key, value| puts "#{key}: #{value}" }
