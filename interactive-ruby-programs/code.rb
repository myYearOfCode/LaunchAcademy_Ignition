# create a new variable that will hold our safety list
supply_list =  "Spaceship Supply List\n"
supply_list += "------------\n"

# loop until the user is done entering supplies
input = ""
while input != "done" do
  # ask the user for a supply, or if they are done
  print "Please enter a supply (or 'done'): "

  # get the supply
  input = gets.chomp
if input != "done"
  # add the supply to our list
  supply_list += "* #{input}\n"
end
# end loop
end

# print the safety list
puts "\n\n"
puts supply_list
