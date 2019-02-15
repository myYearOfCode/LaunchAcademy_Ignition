#  Write Ruby<->English answers here as comments in your code

# 1) for each number in numbers print 3 * number
# * numbers is an array
# numbers.each do |number|
#   puts 3 * number
# end

# 2) for each name in names print the length of the name
# * names is an array
# names.each do |name|
#   puts name.length
# end

# 3) for each number in numbers add it to the sum variable and print the sum at the end.
# * numbers is an array
# sum = 0
# numbers.each do |number|
#   sum += number
# end
# puts sum

# 4) for each element of hash print "name is age years old"
# * hash is a hash
# hash.each do |name, age|
#   puts "#{name} is #{age} years old."
# end

# 5) for each transaction of account add the value to the sum. print the sum at the end.
# * account is a hash
# sum = 0
# account.each do |transaction, value|
#   sum += value
# end
# puts "The value the account is #{sum}"

# 6) for each address in addresses print "name lives on address"
# * addresses is a hash
# addresses.each do |name, address|
#   puts "#{name} lives on #{address}"
# end

# Write Ruby code to find out the answers to the following questions:
array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |number|
  sum += number
end
puts sum
# * How would you print out each value of the array?
# array.each do |number|
#   puts number
# end

# or
puts array.join(", ")

# * What is the sum of all of the even numbers?
sum = 0
array.each do |number|
  if number % 2 == 0
    sum += number
  end
end
puts sum
# * What is the sum of all of the odd numbers?
sum = 0
array.each do |number|
  if number % 2 != 0
    sum += number
  end
end
puts sum

# * What is the sum of all the numbers divisble by 5?
sum = 0
array.each do |number|
  if number % 5 == 0
    sum += number
  end
end
puts sum

# * What is the sum of the squares of all the numbers in the array?
sum = 0
array.each do |number|
    sum += number**2
end
puts sum

# Write Ruby code using .each to build the described code. You can create your own data if you want to test it out in irb!

# * For every element 'phone_number' in the array 'phone_numbers' print out the phone number if it is a MA area code.
ma_area_codes = [617, 508, 857]
phone_numbers = [6175556789, 5088471234, 4132345678, 6174329876, 8575557777, 1235434545]

phone_numbers.each do |number|
  if ma_area_codes.include?(number.to_s.slice(0,3).to_i)
    puts number
  end
end

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.each do |item|
  puts item.reverse
end


# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |name|
  sum += name.length
end
puts "The length of all names combined is #{sum}"

# * How many names in `array` are less than 5 characters long?
counter = 0
array.each do |name|
  if name.length < 5
    counter += 1
  end
end
puts "#{counter} names are less than 5 letters long"

# * How many names in `array` end in a vowel?
vowelCount = 0
array.each do |name|
    if ["a","e","i","o","u"].include?(name[-1])
      vowelCount += 1
    end
  end
  puts "#{vowelCount} words end in a vowel"
  
# * How many names in `array` are more than 5 characters long?
counter = 0
array.each do |name|
  if name.length > 5
    counter += 1
  end
end
puts "#{counter} names are greater than 5 letters long"

# * How many names in `array` are exactly 5 characters in length?
counter = 0
array.each do |name|
  if name.length == 5
    counter += 1
  end
end
puts "#{counter} names are 5 letters long"
