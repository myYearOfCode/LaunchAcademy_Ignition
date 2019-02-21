def average(mpgArray)
  # return mpgArray.reduce(:+)/1.0/mpgArray.length
  return mpgArray.reduce(:+)/mpgArray.length.to_f
end

Shuvver = [260, 483, 792, 357, 546] #487.6
Zhook_Cruiser = [186, 223, 173, 297, 303] #236.4
Nanoship = [646, 883, 761, 932, 778] #800

puts average(Shuvver)
puts average(Zhook_Cruiser)
puts average(Nanoship)

def mileage_rating(mileage)
  case mileage
  when (0...250)
    return 'F'
  when (250...500)
    return 'D'
  when (500...750)
    return 'C'
  when 750...1000
    return 'B'
  else
    if mileage < 0
      return ' that is not a valid mileage!'
    elsif mileage >= 1000
      return 'A'
    end
  end
end

puts mileage_rating(1000)
puts mileage_rating(750)
puts mileage_rating(500)
puts mileage_rating(250)
puts mileage_rating(100)
puts mileage_rating(-1)

def rankings(ships)
  ships.each_with_index do |each, index|
    puts "#{index+1}. #{each}"
  end
end

rankings(["Nanoship", "Shuvver", "Snacky Cabs", "Resisty's Ship", "Zhook Cruiser"])
