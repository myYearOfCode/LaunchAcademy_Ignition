def print_puzzle(word, guesses)
  word.gsub(/[^#{guesses}]/i, "_")
end

puts print_puzzle("tesla", ["a","s","L"])
