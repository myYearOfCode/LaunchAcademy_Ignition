# 20190114
# no error checking
# input is stored as a string, so all values are non-numeric.
# not good for math

dehydrated_banana = 1.27
tofu_cake = 4.17
cheese_spread = 3.79
dehydrated_ice_cream_sandwich = 0.75

ticketsAdult = 0
ticketsChild = 0
puts('Hello brave customer! Welcome to our exclusive space flight tours.')
puts('How many adult tickets would you like?')
ticketsAdult = gets.chomp
puts('How many child tickets would you like?')
ticketsChild = gets.chomp
puts("Here are your #{ticketsAdult} adult tickets and #{ticketsChild} child tickets.")

# - Two tofu cakes and two dehydrated ice cream sandwiches
# - Eight packets of cheese_spread and a dehydrated_banana
# - Three of each item on the menu

puts(2*(tofu_cake + dehydrated_ice_cream_sandwich))
puts(8*cheese_spread + dehydrated_banana)
puts(3*(dehydrated_banana+tofu_cake+cheese_spread+dehydrated_ice_cream_sandwich))
