knife_Juggling =  [2.10, 0.77, 5.00, 1.00, 3.00]

torch_Juggling = [6.00, 3.50, 7.00]

hand_Balancing = [2.00, 1.00]

human_Blockhead = [0.75, 0.43]

# for i in [knife_Juggling,torch_Juggling,hand_Balancing,human_Blockhead] # programmatically generate total
#   sumForCategory = 0
#   puts format("#{i}: \n%.2f", sumForCategory)
# end

def sumTips(skill)
  # returns sum and length
  total = 0
  for j in skill
    total += j
  end
  return [total, skill.length]
end

puts('Knife Juggling:')
knife_Juggling_total, knife_Juggling_length = sumTips(knife_Juggling)
puts format("%.2f", knife_Juggling_total)

puts('Torch Juggling:')
torch_Juggling_total, torch_Juggling_length = sumTips(torch_Juggling)
puts format("%.2f", torch_Juggling_total)

puts('Hand Balancing:')
hand_Balancing_total, hand_Balancing_length = sumTips(hand_Balancing)
puts format("%.2f", hand_Balancing_total)

puts('Human Blockhead:')
human_Blockhead_total, human_Blockhead_length = sumTips(human_Blockhead)
puts format("%.2f", human_Blockhead_total)

puts('Total:')
total = knife_Juggling_total + torch_Juggling_total + hand_Balancing_total + human_Blockhead_total
puts format("%.2f", total)

tipCount = knife_Juggling_length + torch_Juggling_length + hand_Balancing_length + human_Blockhead_length

puts('Average:')
puts format("%.4f", total/tipCount)
puts
######### part 2
puts("Hello everybody! Today, I will be showing you acts of great daring. Can I have an audience volunteer?
\nThere's our brave volunteer! What's your name?")
volunteerName = gets.chomp
puts("Thank you. Can everyone welcome #{volunteerName} to the stage?")
puts("#{volunteerName}, what is your favorite number?")
favNumber = gets.chomp.to_i
puts("Ok #{volunteerName}, my friend and I will be juggling these razor-sharp knives around you for #{favNumber} seconds. Are you prepared to be amazed?")
