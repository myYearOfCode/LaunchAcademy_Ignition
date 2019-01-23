#20190121
donations = 0.0
puts("Enter your values here!")
while donations < 100 do
  donations += gets.chomp.to_f
end

puts("You've reached 100!")

if (donations >= 125)
  bonusUnits = ((donations - 100)/25).to_i
  # puts(bonusUnits)
  bonusUnits.times do
    puts("You have earned another $25!")
  end
end
