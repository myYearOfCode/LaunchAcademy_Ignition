puts "How many sides does your dice have?"
number_sides = gets.chomp.to_i
puts "How many times would you like to roll?"
times_to_roll = gets.chomp.to_i
times_rolled = 0
  while times_rolled < times_to_roll do
    dice_one = rand(number_sides).to_i + 1
    dice_two = rand(times_to_roll).to_i + 1
    total = dice_one + dice_two
    puts "You rolled a #{dice_one} and a #{dice_two}"
    puts "Total: #{total}"
    times_rolled += 1
    puts "Do you want to roll again? (y/n)"
    user_input = gets.chomp
    if user_input === "n"
      puts "Thanks for playing!"
      break
    elsif user_input == "y"
      times_rolled = 0
    else
      times_rolled = 0
      puts "Please enter (y/n):"
      user_input = gets.chomp
    end
  end 
