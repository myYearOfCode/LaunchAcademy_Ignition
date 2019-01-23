responses = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes, definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]

# Confirm the correct number of responses have been stored by printing the number to the console (`20`)
puts(responses.length)

# Ask the user what their question is, and store it as a variable called `question`
puts("What is your question?")
question = gets.chomp

# Output a random response to the user's question
puts(responses[rand(0..responses.length)])

# Output the number of responses that include the word "yes"
yes_count = 0
responses.each do |response|
  if response.downcase.include? "yes"
    yes_count += 1
  end
end
puts(yes_count)

# Output the number of responses that include the words "no" or "not"
no_count = 0
["no ", "not"].each do |searchTerm|
  responses.each do |response|
    if response.downcase.include? searchTerm
      no_count += 1
    end
  end
end
puts(no_count)

# Output the alphabetized list of responses
puts(responses.sort)

# Output the first and last responses from the alphabetized list
puts(responses.sort.first)
puts(responses.sort.last)

# Add 1 response of your choosing to the current list
responses.push("Don't bet the farm on it.")

# Concat an array of 3 additional responses to the current list
responses += ["nyet", "negatory", "heck yes!"]

# Confirm the correct number of responses have been stored by printing the number to the console (`24`)
puts(responses.length)
