input = nil
while input != "S" do
puts("Press 'Enter' to roll again, 'S' to stop")
input = gets.chomp
  if input == ""
    dice_one = rand(1..6)
    dice_two = rand(1..6)
    puts "You rolled a #{dice_one} and a #{dice_two}."
    puts "Total: #{dice_two+dice_one}"
  end
end
