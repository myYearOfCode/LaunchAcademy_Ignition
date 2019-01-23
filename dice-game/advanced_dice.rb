input = nil
playing = true

puts("How many sides do your die have?")
die_sides = gets.chomp.to_i

puts("How many rolls would you like?")
die_rolls = gets.chomp.to_i

while playing do

  die_rolls.times do
    dice_one = rand(1..die_sides)
    dice_two = rand(1..die_sides)
    puts "You rolled a #{dice_one} and a #{dice_two}. Total: #{dice_two+dice_one}"
  end

  while (input != "y" && input != "n") do
    print("Play again? (y/n) ")
    input = gets.chomp
    if input == "y"
      playing = true
    end
    if input == "n"
      playing = false
    end
  end
  
  input = nil
end
