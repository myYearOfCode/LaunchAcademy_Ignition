require 'pry'
input = nil

while input != "no"
  puts('Can I get you anything? (type "no" to exit.)')
  input = gets.chomp
  binding.pry
end

puts("Okay, bye!")
