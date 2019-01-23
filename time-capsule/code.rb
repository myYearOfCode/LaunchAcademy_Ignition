# Greet the user and take their name. Store this name.
print("Hello! What is your name? ")
name = gets.chomp
# Ask the user what they want to add to the time capsule.
# Give the user an option to type the command "FINISHED" which instructs the
# program to stop asking the user to add more items.
inventory = []
item = nil
while item != 'FINISHED' do
  puts("What would you like to add to the time capsule? Type 'FINISHED' to end.")
  item = gets.chomp

  if item != 'FINISHED'
    puts("How many would you like to go in?")
    quantity = gets.chomp
    inventory << [item, quantity]
  end
end

puts "Hello #{name}, thanks for trying our Time Capsule maker.
Here is a list of the items."
inventory.each { |item| puts "* #{item[0]} (#{item[1]})" }
