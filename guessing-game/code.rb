#20190121
require "pry"
guesses = 1
puts("Welcome to the Guessing Game! What difficulty would you like to play?")
puts("Type easy or hard:")
difficulty = gets.chomp
difficulty == 'hard' ? max_difficulty = 20 : max_difficulty = 10
myGuess = rand(1..max_difficulty)
# binding.pry
puts("I've picked a number between 1 and #{max_difficulty}. Now guess it!")
guess = gets.chomp
while guess != myGuess.to_s do
  puts("Nope, try again!")
  guess = gets.chomp
  guesses += 1
end
puts("You win! Nice job!")
puts("Your score was: #{guesses}")
