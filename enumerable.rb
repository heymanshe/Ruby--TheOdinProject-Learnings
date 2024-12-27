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
friends.each { |friend| puts "Hello, " + friend }

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


# reduce method
my_numbers = [5, 6, 7, 8]
add_numbers = my_numbers.reduce { |sum, number| sum + number }

puts add_numbers