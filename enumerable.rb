friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end
# puts invited_list


# using select or reject method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
new_friends = friends.select { |friend| friend != 'Brian' }
# friends.reject { |friend| friend == 'Brian' }
puts new_friends

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}


# each method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# friends.each { |friend| puts "Hello, " + friend }

# on hash
my_hash = { "one" => 1, "two" => 2 }
# my_hash.each { |key, value| puts "#{key} is #{value}" }


# each with index method
fruits = ["apple", "banana", "strawberry", "pineapple"]
# fruits.each_with_index { |fruit, index| puts fruit if index.even? }


# MAP Method

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
#friends.each { |friend| friend.upcase } # this won't work because each doesn't modify original array


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []
friends.each { |friend| shouting_at_friends.push(friend.upcase) }
# puts shouting_at_friends # this works but we can use map instead of this extra work


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# friends = friends.map { |friend| friend.upcase }
# puts friends
friends.map! { |friend| friend.upcase }
#puts friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order.map { |item| item.gsub('medium', 'extra large') }


# reduce method => takes an array or hash and reduces it down to a single object
my_numbers = [5, 6, 7, 8]
add_numbers = my_numbers.reduce { |sum, number| sum + number }

puts add_numbers


votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

result = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

puts result


# Bang Method=> when want to change the original array

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


# Include method

numbers = [5, 6, 7, 8]

# puts numbers.include?(6)
# puts numbers.include?(3)


# Any method => true if any elements in array or hash match the condition within the block
numbers = [21, 42, 303, 499, 550, 811]

# puts numbers.any? { |number| number > 500 }
# puts numbers.any? { |number| number < 20 }

# All Method => true if all the elements in array or hash match the condition you set within the block

fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.all? { |fruit| fruit.length > 3 }
puts fruits.all? { |fruit| fruit.length > 6 }


# None method => true only if the condition in the block matches none of the elements in your array or hash

fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.none? { |fruit| fruit.length > 10 }
puts fruits.none? { |fruit| fruit.length > 6 }

