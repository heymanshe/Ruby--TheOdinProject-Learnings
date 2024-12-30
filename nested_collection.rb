teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

puts teacher_mailboxes[1][0]
puts teacher_mailboxes[-1][-2]
# puts teacher_mailboxes[3][0]
#=> NoMethodError, access an index of a nonexistent nested element
# puts teacher_mailboxes[0][4]
#=> nil, access a nonexistent index inside of an existing nested element
# teacher_mailboxes.dig(3, 0) #=> same can be acheived by dig method
#=> nil
# teacher_mailboxes.dig(0, 4)
#=> nil



vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}
puts vehicles[:alice][:year]

# adding and deleteing new element 
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
vehicles[:dave][:color] = "red"
puts vehicles

vehicles.delete(:blake)
vehicles[:dave].delete(:color)
puts vehicles