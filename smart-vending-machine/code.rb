require 'pry'

count = nil
puts("Hello, I'm the first and only Talking Vending Machine.")
puts("What would you like today?")
item = gets.chomp
REGEX = /\A\d+\z/
while count.nil? do
  puts("How many of those would you like?")
  count = gets.chomp

  if count.index("tons").nil? == false
    count = rand(1..20)
  elsif REGEX.match count
      count = count.to_i
  else
    puts"Thats not a valid input, try again."
    count = nil
  end
end

# binding.pry
count.times do
  puts(item)
end
puts("There you go! Come again!")
