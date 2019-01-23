#20190122
crypt_of_civilization = [
  "Comptometer",
  "Box of phonographic records",
  "Plastic savings bank",
  "Set of scales",
  "Toast-O-Lator",
  "Sample of aluminum foil",
  "Donald Duck doll"
]

extra = ["Container of soda", "Lionel model train set", "Ingraham pocket watch"]

# write a single line of Ruby code that combines the two arrays
crypt_of_civilization += extra

# How many items are in the array?
puts crypt_of_civilization.length
# What is the first item in the array?
puts crypt_of_civilization.first
# What is the last item in the array?
puts crypt_of_civilization.last
# What is the second item in the array?
puts crypt_of_civilization[1]
# What is the third item in the array?
puts crypt_of_civilization[2]
# What is the second from last item in the array?
puts crypt_of_civilization[-2]
# What is the index of "Toast-O-Lator"?
puts crypt_of_civilization.index("Toast-O-Lator")
# Does the array contain "Container of soda"?
puts crypt_of_civilization.include? "Container of soda"
# Does the array contain "Toast-O-Lator"?
puts crypt_of_civilization.include? "Toast-O-Lator"
# Does the array contain "Plastic bird"?
puts crypt_of_civilization.include? "Plastic bird"

puts
# By word length
puts crypt_of_civilization.sort {|first_item, second_item| first_item.length <=> second_item.length}

puts
# In alphabetical order
puts crypt_of_civilization.sort {|first_item, second_item| first_item <=> second_item}

puts
# In reverse alphabetical order
puts crypt_of_civilization.sort {|first_item, second_item| second_item <=> first_item}

# Using a while loop, print out each element of the array
counter = 0
while counter < crypt_of_civilization.length do
  puts(crypt_of_civilization[counter])
  counter += 1
end

# do the same with EACH
crypt_of_civilization.each {|item| puts item}

# delete the first item
crypt_of_civilization.unshift

# delete the last item
crypt_of_civilization.pop

# delete "set of scales"
crypt_of_civilization.delete("Set of scales")

# delete "sample of aluminum foil"
crypt_of_civilization.delete("Sample of aluminum foil")
