# definition of lamda
#- a way to write a block and save it to a variable
#- can be useful if you’re calling different methods 
#  but passing in the same block to each of them


# declaretions of lambda
my_lambda = lambda { puts "my lambda" }
my_other_lambda = -> { puts "hello from the other side" }
  
my_lambda.call

# accepting arguments
my_name = ->(name) { puts "hello #{name}" }
my_age = lambda { |age| puts "I am #{age} years old" }

my_name.call("tim")
my_age.call(78)
# othe ways to call lambda
# my_name.call("tim")
# my_name.("tim")
# my_name["tim"]


# definition of procs
#- an object that you can use to store blocks and pass them around like variables
#- lambda is actually just a type of proc object but with some distinct behaviors

# delacring procs
a_proc = proc { puts "this is a proc" }
a_proc.call

# arguments and proc
a-proc = Proc.new { |name, age| puts "name: #{name} --- age: #{age}" }
a_proc.call("tim", 80)

